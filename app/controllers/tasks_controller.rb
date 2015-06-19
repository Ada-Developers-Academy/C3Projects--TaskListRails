class TasksController < ApplicationController
  def index
    @all_tasks     = Task.all
    
  	@title         = "Task List"
    @subhead       = "Get 'er done"
  end

  def show
    @task          = Task.find(params[:id])
    @date          = @task.date_completed ? @task.date_completed.strftime("%m-%d-%Y") : nil
    @creation_date = @task.created_at.strftime("%m-%d-%Y")

  	@title			   = @task.name
    @headline      = "Voilà, your task"
  end

  def new
    @task         = Task.new
    @placeholder  = "optional"
    @action       = "create"
    @method       = "post"
    @submit_text  = "add task"
    @title        = "Add a new task"
  end

  def create
    @task = Task.create(create_params[:task])

    redirect_to '/'
  end

  def update_completion
    task = Task.find(params[:id])
    task.date_completed = Time.now
    task.save

    redirect_to '/'
  end

  def update
    @task = Task.find(params[:id])
    @task.update(create_params[:task])

    redirect_to '/'
  end

  def edit
    @task          = Task.find(params[:id])
    @date          = @task.date_completed ? @task.date_completed.strftime("%m-%d-%Y") : nil
    @action        = "update"
    @method        = "patch"
    @placeholder   = nil
    @submit_text   = "update"

    @title         = "Edit this task:"
  end

  def confirm_delete
    @task          = Task.find(params[:id])
    @date          = @task.date_completed ? @task.date_completed.strftime("%m-%d-%Y") : nil
    @creation_date = @task.created_at.strftime("%m-%d-%Y")

    @title      = "Delete this task?"
  end

  def destroy
    @task = Task.find(params["id"])
    @task.destroy

    redirect_to "/"
  end

  private

  def create_params
    params.permit(task: [:name, :description, :date_completed])
  end
end
