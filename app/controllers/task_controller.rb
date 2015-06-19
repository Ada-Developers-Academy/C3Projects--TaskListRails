class TaskController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @id = params[:id]
    @task = Task.find(@id)
  end

  def new
    @new_task = Task.new
  end

  def create
    @new_task = Task.new(create_params[:task])
    @new_task.save

    redirect_to '/'
  end

  def delete
    @delete_task = Task.destroy(params[:id])

    redirect_to '/'
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_at])
  end
end
