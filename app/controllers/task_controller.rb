class TaskController < ApplicationController

  def index
    @tasks = Task.all
    render :index
  end

  def show
    @detail = Task.find(params[:id])
    render :show
  end

end
