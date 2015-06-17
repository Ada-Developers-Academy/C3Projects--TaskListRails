class TasksController < ApplicationController
  def index
  	@title = "Task List"
  	@all_tasks = Task.all
  end

  def show
  	@task_id		= params[:id]
  	@task 			= Task.find(@task_id)
  	@title			= @task.name
  end
end
