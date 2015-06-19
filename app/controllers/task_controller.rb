class TaskController < ApplicationController
  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
    render :create_new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save
    redirect_to "/"
  end

  def confirm
    id = params[:id]
    @task = Task.find(id)
  end

  def delete
    id = params[:id]
    @task = Task.find(id)
    @task.delete
    @task.save
    redirect_to "/"
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_at])
  end
end
