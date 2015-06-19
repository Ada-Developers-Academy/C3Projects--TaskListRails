class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render :index
  end

  # Display a specific task
  def show
    @task = Task.find(params[:id])
    render :tasks
  end

  def new
    @task = Task.new

    render :new
  end

  # Add and save a new task to list
  def create
    @task = Task.new(task_params[:task])
    @task.save

    index
  end

  # Delete a task from list
  def destroy
    @task = Task.find(params[:id])
    @task.destroy.save

    redirect_to '/'
  end

  # Update an existing task
  def update
    @task = Task.find(params[:id])
    # @name = params[:name]
    # @desc = params[:desc]
    # @comp_date = params[:comp_date]
    # @task.update
  end

  private

  def task_params
    params.permit(task: [:name, :desc, :comp_date])
  end

end
