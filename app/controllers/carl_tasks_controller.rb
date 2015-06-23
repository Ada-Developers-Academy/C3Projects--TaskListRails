require "time"

class CarlTasksController < ApplicationController
  #----------------- VIEWS WITH LITTLE TO NO BUSINESS LOGIC --------------------
  def about
  end

  def four_oh_four
  end

  def index
    @tasks = Task.all

    people = Person.all
    @people = []

    people.each do |person|
      @people.push({
        id: person.id.to_i,
        name: person.name,
        count: person.tasks.where(date_complete: nil).count
      })
    end
  end

  def show
    @task = Task.find(params[:id])
  rescue
    redirect_to "/"
  end

  # #------------ DISPLAYING TASKS IN REVERSE CHRONOLOGICAL ORDER ----------------
  #
  # def newest
  #   tasks = Task.all
  #   @tasks = []
  #
  #   tasks.each do |task|
  #     @tasks.unshift(task)
  #   end
  #
  #   render :index
  # end
  #
  # def reverse
  #   redirect_to "/newest"
  # end
  #
  # def backward
  #   redirect_to "/newest"
  # end
  #
  # def oldest
  #   redirect_to "/"
  # end
  #
  # def forward
  #   redirect_to "/"
  # end
  #
  #----------------- DISPLAYING TASKS FOR INDIVIDUAL PEOPLE --------------------

  def people
    @person = Person.find(params[:id])
    @tasks = Task.all.where(person_id: params[:id])

    @people = [{
        id: @person.id,
        name: @person.name,
        count: @person.tasks.where(date_complete: nil).count
      }]

    render :index
  rescue
    redirect_to "/person_not_found"
  end

  def people_list
    people = Person.all
    @people = []
    people.each do |person|
      tasks_count = person.tasks.count
      tasks_wip = person.tasks.where(date_complete: nil).count
      tasks_done = tasks_count - tasks_wip
      percent_complete = ((tasks_done.to_f / tasks_count.to_f).round(2) * 100).to_i

      @people.push({
        person: person,
        tasks_count: tasks_count,
        tasks_wip: tasks_wip,
        tasks_done: tasks_done,
        percent_complete: percent_complete
      })
    end
  end

  def person
    @person = Person.find(params[:id])
    @tasks_count = @person.tasks.count
    @tasks_wip = @person.tasks.where(date_complete: nil).count
    @tasks_done = @tasks_count - @tasks_wip
  rescue
    redirect_to "/person_not_found"
  end


  #-------------------------- CREATING A NEW TASK ------------------------------
  def create
    @task = Task.new
    @people = Person.all.map { |person| [person.name, person.id] }
  end

  def created
    task = prepare_task_from_params

    Task.create(task)
    id = Task.last.id

    redirect_to "/show/#{ id }"
  end

  #----------------------------- EDITING A TASK --------------------------------
  def edit
    @task = Task.find(params[:id])
    @people = Person.all.map { |person| [person.name, person.id] }

    render :create
  rescue
    redirect_to "/edit_what_task"
  end

  def edited
    task = prepare_task_from_params
    id = task[:id]

    task.except![:id]

    Task.find(id).update(task)

    redirect_to "/show/#{ id }"
  end

  #--------------------------- COMPLETING A TASK -------------------------------
  def complete
    if params[:id]
      task = Task.find(params[:id])
      task.date_complete ? task.update(date_complete: nil) : task.update(date_complete: Time.now)

      redirect_to "/"
    end
  end

  #---------------------------- DELETING A TASK --------------------------------
  def delete
    @task = Task.find(params[:id])
  rescue
    redirect_to "/delete_what_task"
  end

  def deleted
    if params[:id]
      Task.destroy(params[:id])

      redirect_to "/"
    end
  end

  #---------------------------- PRIVATE METHODS --------------------------------
  private

  # prepare params for create & edit methods
  def prepare_task_from_params
    task = task_params[:task]
    name, description = task[:name], task[:description]

    date = date_params[:start_date]
    date_complete = (task[:complete] == "1") ? Date.parse("#{ date[:year] }/#{ date[:month] }/#{ date[:day] }") : ""

    task.except!(:complete)

    if date_complete != ""
      task[:date_complete] = date_complete
    end

    return task
  end

  # permit these params nested inside task
  def task_params
    params.permit(task: [:id, :name, :description, :complete, :person_id])
  end

  # permit these params nested inside start_date
  def date_params
    params.permit(start_date: [:year, :month, :day])
  end
end
