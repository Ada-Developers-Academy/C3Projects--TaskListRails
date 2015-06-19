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

  def edit
    @task_id =params[:id]
    @task = Task.find(@task_id)
    @title = @task.name + "Edit"
  end

  def update
    @task_id =params[:id]
    @task = Task.find(@task_id)
    @task.update(create_params[:task])

    redirect_to root_url
  end

  def new
    @title = "Add New Task"
    @task = Task.new
  end

  def create
    @title = "Add New Task"
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to root_url
  end

  def create_params
    params.permit(task: [:name, :description])
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to root_url
  end

  def mark_complete
    @task = Task.find(params[:id])
    @time = Time.now.strftime("%y=%m=%d")
    @task.update(completed_at: @time)

    redirect_to root_url
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

  def sort_name
    @title = "Task List"
    @all_tasks = Task.all.order(:name)

    render :home
  end
end
