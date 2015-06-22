class TaskController < ApplicationController
  # RENAME FOLDER TASKS & change folder/controller associations

  def index
    @tasks = Task.all
    render :home
  end

  def show
    # need to get id from the params hash
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    @url = "/tasks/new"
  end

  def create
    @task = Task.create(create_params[:task])
    redirect_to "/"
  end

  def complete
    @id = params[:id]
    @task = Task.find(@id)
      @task.completed = "Yes"
      @task.date = Time.now
    @task.save
    redirect_to "/"
  end

  def edit
    @id = params[:id]
    @task = Task.find(@id)
    @url = "/tasks/:id/edit"
  end

  def update
    @id = params[:task][:id]
    @task = Task.find(@id)

    @task.name = create_params[:task][:name]
    @task.date = create_params[:task][:date]
    @task.description = create_params[:task][:description]
    @task.completed = create_params[:task][:completed]
    @task.save

    redirect_to "/"
  end

  def delete
    @id = params[:id]
    @task = Task.find(@id)
    @task.destroy
      redirect_to "/"
  end

private
  # permissable parameters should be in a private method,
  # ie not accessible outside the class TaskController
  def create_params
    params.permit(task: [:name, :description, :date, :completed])
    # params.require(task: [:name])
  end

end
