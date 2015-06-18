class TasklistController < ApplicationController
  attr_reader :tasks
  def task_list
    @tasks = Task.all_tasks
    render :home
  end

  def show
    @task_id = params[:id]
    @task_finder = Task.find(@task_id)
    render :show
  end
end
