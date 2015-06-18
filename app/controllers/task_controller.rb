class TaskController < ApplicationController

  def index
    @tasks = Task.all_tasks
    render :index
  end

  def show
    @id = params[:id]
    @task_finder = Task.find(@id)
    render :show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save
    render :home
  end
end
