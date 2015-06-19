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
    @title = "Add New Task"
    @task = Task.new
  end

  def create
    @title = "Add New Task"
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to "/"
  end

  def create_params
    params.permit(task: [:name, :description])
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to "/"
  end

  def sort_name
    @title = "Task List"
    @all_tasks = Task.all.order(:name)

    render :home
  end

  def sort_completed
    @title = "Task List"
    @all_tasks = Task.all.order(:completed_at)

    render :home
  end
end
