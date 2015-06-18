class TaskController < ApplicationController

  def index
    @tasks = Task.all
    render :home
  end

  def show
    # need to get id from the params hash
    @id = params[:id]
    @task = Task.find(@id)
    render :show
  end

  def create
    @task = Task.new
  end

  def created
    @task = Task.new(create_params[:task])
    @task.save
    redirect_to "/"
  end

  def create_params
    params.permit(task: [:name, :description, :date, :completed, :created_at, :updated_at])
  end

  def delete
    @id = params[:id]
    @task = Task.find(@id)
    @task.destroy
      redirect_to "/"
  end

  

end
