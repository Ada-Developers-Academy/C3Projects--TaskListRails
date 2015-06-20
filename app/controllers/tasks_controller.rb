class TasksController < ApplicationController
  def index
    @tasks = Task.all
    
    render :index
  end

  # Display a specific task
  def show
    @task = Task.find(params[:id])

    render :tasks
  end

  def new
    @task = Task.new

    render :new
  end

  # Add and save a new task to list
  def create
    task = Task.new(task_params[:task])
    task.save
    index
  end

  # Delete a task from list
  def destroy
    task = Task.find(params[:id])
    task.destroy.save

    redirect_to '/'
  end

  # Update an existing task
  def edit
    @task = Task.find(params[:id])

    render :update
  end

  def update
    @task = Task.find(params[:id])
    @name = task_params[:task][:name]
    @desc = task_params[:task][:desc]
    @comp_date = task_params[:task][:comp_date]

    @task.update(name: @name)
    @task.update(desc: @desc)
    @task.update(comp_date: @comp_date)
    @task.save

    redirect_to '/'
  end

  def complete
    task = Task.find(params[:id])
    task.comp_date = "#{Time.now}"
    task.save

    redirect_to '/'
  end

  def undo
    task = Task.find(params[:id])
    task.comp_date = nil
    task.save

    redirect_to '/'
  end

  private

  def task_params
    params.permit(task: [:name, :desc, :comp_date])
  end

end
