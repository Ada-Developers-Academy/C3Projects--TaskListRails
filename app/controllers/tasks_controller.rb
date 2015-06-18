class TasksController < ApplicationController
  def index
  	@title = "Task List"
  	
  	@all_tasks = Task.all
  end

  def show
    @task       = Task.find(params[:id])

  	@title			= @task.name
  	@date			= @task.date_completed ? @task.date_completed.strftime("%m-%d-%Y") : nil
  end
end
