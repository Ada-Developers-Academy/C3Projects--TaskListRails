class TaskController < ApplicationController
  def index
    @tasks = Task.all
    render :index
  end

  def show
    Task.all
    @task = Task.find(params[:id])
    render :show
  end

end
