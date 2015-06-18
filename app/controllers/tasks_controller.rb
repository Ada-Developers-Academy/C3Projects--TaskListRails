class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render :index
  end

  def show
    @task = Task.find(params[:id])
    render :tasks
  end

  def new
    @task = Task.new

    render :new
  end

  # Add and save a new task to db
  def create
    @task = Task.new(task_params[:task])
    @task.save

    index
  end

  # Delete a task from db
  def destroy
    @task = Task.find(params[:id])
    @task.destroy.save

    redirect_to '/'
  end

  def update
    @task = Task.find(params[:id])
    @task.update.save
  end

  private

  def task_params
    params.permit(task: [:name, :desc, :comp_date])
  end

end
