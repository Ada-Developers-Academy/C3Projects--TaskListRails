class TasksController < ApplicationController
  # RENAME FOLDER TASKS & change folder/controller associations
  before_action :find_task, only: [:show, :edit, :update, :complete, :delete]

  def index
    @tasks = Task.all
    @all_the_people = Person.all
  end

  def show
    @all_the_people = Person.all
  end

  def new
    @task = Task.new
    @all_the_people = Person.all
    @url = "/tasks/new"
  end

  def create
    @task = Task.create(create_params)
    redirect_to "/"
  end

  def complete
      @task.completed = "Yes"
      @task.date = Time.now
    @task.save
    redirect_to "/"
  end

  def edit
    @all_the_people = Person.all
    @url = "/tasks/#{@task.id}/edit"
  end

  def update
    # @task.id => return id associated w/task
    @task.name = create_params[:name]
    @task.date = create_params[:date]
    @task.description = create_params[:description]
    @task.completed = create_params[:completed]
    @task.person_id = create_params[:person_id]
    @task.save

    redirect_to "/"
  end

  def delete
    find_task
    @task.destroy
      redirect_to "/"
  end

private
  # permissable parameters should be in a private method,
  # ie not accessible outside the class TaskController
  def find_task
    id = params[:id]
    @task = Task.find(id)
  end

  def create_params
    params.permit(task: [:name, :description, :date, :completed, :person_id])[:task]
    # params.require(task: [:name])
  end

end
