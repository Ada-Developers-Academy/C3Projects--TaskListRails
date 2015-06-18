class TaskListsController < ApplicationController
  def index
    @tasks = Task.all #on Task class #AR makes this available on this model and all the records of the db
    render :index
  end

  def new
    @new_task = Task.new
    # render :new
  end

  def create
    @new_task = Task.new(create_params[:task]) #pass params to diff function which should return params.require
    @new_task.save
    render :new
  end

  def create_params
    params.permit(new_task: [:name, :description, :completed_at])
  end

  def show
    @show = Task.find(params[:id])
    render :show
  end
end
