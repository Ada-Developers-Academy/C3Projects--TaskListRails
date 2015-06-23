class TaskController < ApplicationController

  def index
    @tasks = Task.all_tasks
    @person = Person.all
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
    @person = Person.all
    @task = Task.new(create_params[:task])
    @task.save
    redirect_to root_url
  end

  def edit
    @task = Task.find(params[:id])
    render :update
  end

  def update
    @task = Task.find(params[:id])
    @task.update(create_params[:task])
    @task.save
    redirect_to root_url
  end

  def completed
    @task = Task.find(params[:id])
    @task.completed_at = Time.now
    @task.save
    redirect_to root_url
  end

  def in_process
    @task = Task.find(params[:id])
    @task.completed_at = nil
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
