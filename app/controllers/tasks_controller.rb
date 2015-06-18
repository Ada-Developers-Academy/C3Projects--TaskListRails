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
end
