class TaskController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    # redirect_to :root
  end

  def create
    @task = Task.create(task_params)
    redirect_to :root
  end

  def delete
    @task = Task.find(params[:id])
    @task.delete
    redirect_to :root
  end

  def task_params
    params.require(:task).permit(:name, :description, :date_completed)
  end

end