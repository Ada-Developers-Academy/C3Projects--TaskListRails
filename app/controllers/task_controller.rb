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

  def update
    @task = Task.find(params[:id])
  end

  def edit

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
