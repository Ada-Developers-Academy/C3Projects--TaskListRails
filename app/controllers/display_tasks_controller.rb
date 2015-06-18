class DisplayTasksController < ApplicationController
  def display_tasks
    @tasks = Task.all
    render :tasks
  end

  def display_task
    @task = Task.find_by id: params[:task_id]
    render :task
  end
end
