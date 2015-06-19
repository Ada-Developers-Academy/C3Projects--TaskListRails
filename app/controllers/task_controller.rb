class TaskController < ApplicationController

  def index
    @tasks = Task.all_tasks
    render :index
  end

  def show
    @id = params[:id]
    @task_finder = Task.find(@id)
    render :show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save
    redirect_to root_url
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to root_url
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_at])
  end
end
