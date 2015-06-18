class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render :index
  end

  def show
    @task = Task.find(params[:id])
    render :tasks
  end

  def new
    @task = Task.new

    render :new
  end

  def create
    @task = Task.new(task_params[:task])
    @task.save

    index
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy.save

    redirect_to '/'
  end

  private

  def task_params
    params.permit(task: [:name, :desc, :comp_date])
    # params.require(:task).permit(task: [:name, :desc, :comp_date])
  end

end
