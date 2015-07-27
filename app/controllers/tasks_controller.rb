class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :complete, :destroy]

  def index
    @person = Person.find(params[:person_id])
  end

  def all_tasks
    @all_tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
    @person = Person.find(params[:person_id])
    @all_people = Person.all
  end

  def edit
    @all_people = Person.all
    @person = Person.find(@task.person_id)
  end

  def create
    # TODO: require task name from the user
    @task = Task.new(task_params)
    person = Person.find(task_params[:person_id])


    if @task.save
      redirect_to person_tasks_path(person)
    else
      render :new, notice: 'Sorry, something went wrong =('
    end
  end

  def update
    if params[:complete]
      @task.change_complete_status(params[:complete])
    # TODO: fix -- this is a bit awkward if they delete a task from /tasks
      redirect_to person_tasks_path(params[:person_id])
    elsif @task.update(task_params)
      redirect_to @task
    else
      render :edit, notice: 'Sorry, something went wrong =('
    end
  end

  def destroy
    @task.destroy
    person_id = @task.person.id
    # TODO: fix -- this is a bit awkward if they delete a task from /tasks
    redirect_to person_tasks_path(person_id), notice: "\"#{@task.name}\" was deleted."
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.permit(task: [:name, :description, :person_id])[:task]
    end
end
