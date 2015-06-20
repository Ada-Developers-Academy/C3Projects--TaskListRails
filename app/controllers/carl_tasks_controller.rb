require "time"

class CarlTasksController < ApplicationController
  #--------------- PARTIALS WITH LITTLE TO NO BUSINESS LOGIC -------------------
  def about
  end

  def four_oh_four
  end

  def index
    @tasks = Task.all
  end

  def task
    @task = Task.find(params[:id])
  rescue
    redirect_to "/"
  end

  #-------------------------- CREATING A NEW TASK ------------------------------
  def create
    @task = Task.new
  end

  def created
    task = prepare_task_from_params

    Task.create(task)
    id = Task.last.id

    redirect_to "/task/#{ id }"
  end

  #----------------------------- EDITING A TASK --------------------------------
  def edit
    @task = Task.find(params[:id])

    render :create
  rescue
    redirect_to "/edit_what_task"
  end

  def edited
    task = prepare_task_from_params
    id = task[:id]

    task.except![:id]

    Task.find(id).update(task)

    redirect_to "/task/#{ id }"
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
    params.permit(task: [:id, :name, :description, :complete])
  end

  # permit these params nested inside start_date
  def date_params
    params.permit(start_date: [:year, :month, :day])
  end
end
