class TaskController < ApplicationController
  def index
    @all_tasks = Task.all
    render :index
  end

  def task_details
    id = params[:task_id]
    @task = Task.find(id)
  end
end
