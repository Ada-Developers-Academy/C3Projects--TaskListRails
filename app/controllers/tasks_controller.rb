class TasksController < ApplicationController
  def index
  	@title = "Task List"
  	@all_tasks = Task.all
  end

  def show
  	@task 			= Task.find(params[:id])
  	@name			= @task.name
  	@title			= @name
  	@description	= @task.description
  	@completed 		= @task.completed?
  	@date			= @task.date_completed ? @task.date_completed.strftime("%m-%d-%Y") : nil
  end
end
