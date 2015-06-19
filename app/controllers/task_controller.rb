class TaskController < ApplicationController
  def index
    @tasks = Task.all #on Task class #AR makes this available on this model and all the records of the db
    render :index
  end

  def new
    @new_task = Task.new
  end

  def create
    @new_task = Task.new(create_params[:task]) #pass params to diff function which should return params.require
    @new_task.save
    redirect_to "/" #redirecr to / which will call index method and render tasks. render triggers that erb and redirects go somewhere else and triggers erb there
  end

  def create_params
    params.permit(task: [:name, :description, :completed_at])
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/"
  end

  def confirm
    @task = Task.find(params[:id])
  end

  def show
    @show = Task.find(params[:id])
    render :show
  end
end
