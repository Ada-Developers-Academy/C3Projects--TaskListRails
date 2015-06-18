class TasklistController < ApplicationController

  def task_list
    @tasks = Task.all_tasks
    render :home
  end

  def show
    @task_id = params[:task_id]
    @task_finder = Task.find("#{@task_id}")
    # @id = params[:id]
    # @task_finder = Task.find(@id)
    render :show
  end
end
