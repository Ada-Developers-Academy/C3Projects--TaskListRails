class DisplayTasksController < ApplicationController
  def display_tasks
    @tasks = Task.all
    render :tasks
  end

  def display_task
    @task = Task.find_by id: params[:task_id]
    render :task
  end

  def new
    @task = Task.new
    render :add_task_form
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to :tasks
  end

  def destroy
    @task = Task.find_by id: params[:task_id]
    @task.destroy

    redirect_to "/"
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_at])
  end
end
