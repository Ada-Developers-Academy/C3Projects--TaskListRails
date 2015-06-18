class DisplayTaskController < ApplicationController
  def index
    @all_tasks = Task.all
    render :index
  end

  def links
    # @task = params[:task]
    @task_i_want = Task.where(name: "#{params[:task]}")
    render :single_task
  end
end
