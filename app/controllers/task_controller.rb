class TaskController < ApplicationController
  def index
    @tasks = Task.all

    render :index
  end

  def show
    @task = Task.find(params[:id])

    render :show
  end

  def new
    @new_task = Task.new

    render :add_task
  end

  def create
    @new_task = Task.new(create_params[:task])
    @new_task.save

    index
  end

  def delete
    @task = Task.find(params[:id])

    render :delete
  end

  def confirm_delete
    @task = Task.find(params[:id])
    @delete_task = Task.delete(@task)

    redirect_to :root
  end

  def update
    Task.update((params[:id]), completed_on: Time.now)

    index
  end

  def uncheck_update
    Task.update((params[:id]), completed_on:" ")

    index
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_on])
  end

end
