class TaskController < ApplicationController

  def index
    @tasks = Task.all
    render :home
  end

  def show
    # need to get id from the params hash
    @task = Task.find(params[:id])
    render :show
  end

  def new
    @task = Task.new
    render :new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save
    redirect_to "/"
  end

  def complete
    @id = params[:id]
    @task = Task.find(@id)
    @task.completed = "yes"
    @task.date = Time.now
    @task.save

    redirect_to "/"
  end

  def edit
    @id = params[:id]
    @task = Task.find(@id)
  end

  def update
    @id = params[:id]
    @task = Task.find(@id)
    @task.update_all
    @task.save

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
