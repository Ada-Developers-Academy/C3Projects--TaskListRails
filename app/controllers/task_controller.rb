class TaskController < ApplicationController

  def index
    @tasks = Task.all
    render :index
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
    redirect_to root_url
  end

  # def update
  #   @update_task = Task.find(params[:id])
  #   @update_task.update(task_name: params[:task_name])
  #
  #   redirect_to root_url
  # end

  def complete
    @task = Task.update(params[:id], completed: "true", date_completed: Time.now)
    @task.save

    redirect_to root_url
  end

  def incomplete
    @task = Task.update(params[:id], completed: "false", date_completed: nil)
    @task.save

    redirect_to root_url
  end

  def delete
    @delete_task = Task.destroy(params[:id])

    redirect_to root_url
  end

  private

  def create_params
    # params.require(task: [:id, :task_name])
    params.permit(task: [:task_name, :description, :completed, :date_completed])
  end


end
