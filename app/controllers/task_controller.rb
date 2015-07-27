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
    @task = Task.new
    @url = "/tasks"
    render :new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to "/"
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to "/"
  end

  def edit
    @task = Task.find(params[:id])
    @url = "/task/#{@task.id}/edit"

    render :edit
  end

  def update
    @task = Task.find(params[:id])
    task_params = create_params[:task]
    @task.update(task_params)

    redirect_to "/"
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.completed_at = Time.now
    @task.completion_status = "true"
    @task.save

    redirect_to "/"
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_at, :completion_status, :complete_by, :person_id])
  end

end
