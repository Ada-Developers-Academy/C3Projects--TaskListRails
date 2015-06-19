class TasksController < ApplicationController
  def index
    @all_tasks     = Task.all
    
  	@title         = "Task List"
    @subhead       = "Get 'er done"
  end

  def show
    @task          = Task.find(params[:id])
    @date          = @task.date_completed ? @task.date_completed.strftime("%m-%d-%Y") : nil
    @creation_date = @task.created_at.strftime("%m-%d-%Y")

  	@title			   = @task.name
    @headline      = "Voilà, your task:"
  end

  def new
    @task = Task.new
    @title        = "Add a new task"
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to '/'
  end

  def confirm_delete
    @task          = Task.find(params[:id])
    @date          = @task.date_completed ? @task.date_completed.strftime("%m-%d-%Y") : nil
    @creation_date = @task.created_at.strftime("%m-%d-%Y")

    @title      = "Delete this task?"
  end

  def destroy
    @task = Task.find(params["id"])
    @task.destroy

    redirect_to '/'
  end

  private

  def create_params
    params.permit(task: [:name, :description, :date_completed])
  end
end
