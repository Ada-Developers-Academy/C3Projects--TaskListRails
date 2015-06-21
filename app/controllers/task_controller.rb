class TaskController < ApplicationController
  def index
    @tasks = Task.all

    render :index
  end


  def new
    @new_task = Task.new
  end

  def create
    @new_task = Task.new(create_params[:task])
    @new_task.save

    redirect_to '/'
  end

  def show
    @task = Task.find(params[:id])

    render :show

  end

  def delete
    @delete_task = Task.destroy(params[:id])

    redirect_to '/'
  end

  def complete
    # if :completed
    @task = Task.update(params[:id], :completed_at => Time.now)
    @task.save

    redirect_to '/'
  end

  def incomplete
    @task = Task.update(params[:id], :completed_at => nil)
    @task.save

    redirect_to '/'
  end

  def edit
    @task = Task.find_by(params[:id])

  end

  def update
    @task = Task.find_by(params[:id])
    @task.update(create_params[:task])

    @task.save

    redirect_to '/'
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_at])
  end


end
