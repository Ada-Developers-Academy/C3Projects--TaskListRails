class TaskController < ApplicationController

  def index
    @tasks = Task.all
    render :index
  end

  def show
    @detail = Task.find(params[:id])
    render :show
  end

  def new
    @add_task = Task.new
    render :new
  end

  def create
    @add_task = Task.new(create_params[:task])
    @add_task.save

    redirect_to "/"
  end

  def delete
    @detail = Task.find(params[:id])
    @detail.delete
    @detail.save

    redirect_to "/"
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_at, :completion_status])
  end

end
