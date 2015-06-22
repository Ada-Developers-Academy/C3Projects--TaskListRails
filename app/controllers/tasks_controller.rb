class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    @form_url = "/tasks"
    @method = :post
  end

  def create
    @task = Task.create(task_params)
    if @task.valid?
      redirect_to :root
    else
      render :new
    end
  end

  def delete
    @task = Task.find(params[:id])
    @task.delete
    redirect_to :root
  end

  def update_form
    @task = Task.find(params[:id])
    @form_url = "/update/#{@task.id}"
    @method = :patch
  end 

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    render :show
  end

  def completed
    @task = Task.find(params[:id])
    @task.date_completed = Time.now
    @task.completed = true
    @task.save
    redirect_to '/'
  end
    # @task.update_attributes params[:date_completed]

  def task_params
    params.require(:task).permit(:name, :description, :date_completed, :completed)
  end

end