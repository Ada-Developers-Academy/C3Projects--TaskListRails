class TasksController < ApplicationController
#standard naming conventions would say we use the pluralized word tasks since it is a collection of all Task instances
  def index
    @tasks = Task.all
  end

#standard convention would say we should use singular task since it is one instance of a Task <--name of model
  def show
    @task = Task.find(params[:id])
  end

  def new
    @new = Task.new
  end

  def create
    @tasks = Task.all
    @new = Task.new(create_params[:task])
    @new.save
    render :index
  end

  def updated
    @task = Task.find(params[:id])
    @task.name = create_params[:task][:name]
    @task.description = create_params[:task][:description]
    @task.person_id = create_params[:task][:person_id]
    @task.completed = create_params[:task][:completed]
      if @task.completed
        @task.completed_at = create_params[:task][:completed_at]
      else
        @task.completed_at = nil
      end
    @task.save
    redirect_to "/tasks/#{@task.id}"
  end

  def modify
    @modify = Task.find(params[:id])
    render :modify
  end

  def delete_confirmation
    @task = Task.find(params[:id])
  end

  def delete
    @tasks = Task.all
    @task = Task.find(params[:id])
    @task.delete
    render :index
  end

  def mark_complete
    @tasks = Task.all
    @task = Task.find(params[:id])
    @task.completed = true
    @task.completed_at = Time.now
    @task.save
    render :index
  end

  private
  def create_params
    params.permit(task: [:name, :description, :completed, :completed_at, :person_id])
  end

end
