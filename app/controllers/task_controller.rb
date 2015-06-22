class TaskController < ApplicationController
  # RENAME FOLDER TASKS & change folder/controller associations
  before_action :find_task, only: [:show, :edit, :complete, :delete]
  # , only: [:action_names]

  def index
    @tasks = Task.all
    @all_the_people = Person.all
    render :home
  end

  def show
    find_task
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
    find_task
      @task.completed = "Yes"
      @task.date = Time.now
    @task.save
    redirect_to "/"
  end

  def edit
    find_task
    @all_the_people = Person.all
    @url = "/tasks/:id/edit"
  end

  def update
    id = params[:task][:id]
    @task = Task.find(id)
    @task.name = create_params[:name]
    @task.date = create_params[:date]
    @task.description = create_params[:description]
    @task.completed = create_params[:completed]
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
    # DRYing up code
    id = params[:id]
    @task = Task.find(id)
  end


  def create_params
    params.permit(task: [:name, :description, :date, :completed, :person_id])[:task]
    # params.require(task: [:name])
  end

end
