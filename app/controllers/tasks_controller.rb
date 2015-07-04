class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  # Display a specific task
  def show
    @task   = Task.find(params[:id])
  end

  def new
    @task = Task.new
    render :new
  end

  # Add and save a new task to list
  def create
    task = Task.create(task_params)
    index
  end

  # Delete a task from list
  def destroy
    task = Task.find(params[:id])
    task.destroy.save
    redirect_to '/'
  end

  # Update an existing task
  def edit
    @task = Task.find(params[:id])
    render :update
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to '/'
  end

  def complete
    task = Task.find(params[:id])
    task.comp_date = "#{Time.now}"
    task.save
    redirect_to '/'
  end

  # Undo mark complete
  def undo
    task = Task.find(params[:id])
    task.comp_date = nil
    task.save
    redirect_to '/'
  end

  private

  def task_params
    params.require(:task).permit(:name, :desc, :comp_date, :person_id)
  end

end
