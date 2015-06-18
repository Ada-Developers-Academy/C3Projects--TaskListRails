class DisplayTasksController < ApplicationController
  def index
    @all_tasks = Task.all
    render :index
  end

  def single_task_display
    @task = Task.find_by id: params[:task_id]
    render :task
  end
end
