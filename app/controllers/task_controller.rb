class TaskController < ApplicationController
  def index
    @title = "Task List"
    @all_tasks = Task.all

    render :home
  end

  def show
    @task_id =params[:id]
    @task = Task.find(@task_id)
    @title = @task.name + "Details"

		render :details
	end

  def new
    @task = Task.new

    render :new
  end

  def create
    @title = "Add New Task"
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to :home
  end

  def create_params
    params.permit(task: [:name, :description])
  end
end
