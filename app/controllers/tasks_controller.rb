class TasksController < ApplicationController

  def index
    @header = "Task List"
    @all_tasks = Task.all
    render :home
  end

  def show
    @header = "Task Details"
    @adj = "update"
    @task = Task.find(params[:id])
    render :show
  end

  # renders the delete page
  def confirm_deletion
    @task = Task.find(params[:id])
    render :confirm_deletion
  end

  # actually deletes the task. may want to check if need to use instance variables in my actions
  def destroy
    @header = "Delete this Task"
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_url
  end

  def new
    @header= "Add a New Task to the list"
    @adj = "add"
    @task = Task.new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save
    redirect_to root_url
  end

  def edit
    @header = "Update Task"
    @adj = "update"
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(create_params[:task])
    redirect_to root_url
  end

  def complete
    @complete_task = Task.find(params[:id])
    @complete_task.update(completed_date: Time.now)
    redirect_to root_url
  end

  def uncomplete
    @uncomplete_task = Task.find(params[:id])
    @uncomplete_task.update(completed_date: nil)
    redirect_to root_url
  end

private

  # strong params
  def create_params
    params.permit(task: [:name, :description, :completed_date, :person_id])
  end

end
