class TasksController < ApplicationController
  def index
    @all_tasks     = Task.all
    
  	@title         = "Task List"
  end

  def show
    @task          = Task.find(params[:id])
    @date          = @task.date_completed ? @task.date_completed.strftime("%m-%d-%Y") : nil
    @creation_date = @task.created_at.strftime("%m-%d-%Y")

  	@title			   = @task.name
  end

  def new
    @task = Task.new
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

    @title         = "Delete '#{@task.name}'?"
  end

  def destroy
    task_params = params[:task]
    @task = Task.find(task_params["id"])
    @task.destroy

    redirect_to '/'
  end

  private

  def create_params
    params.permit(task: [:name, :description, :date_completed])
  end
end
