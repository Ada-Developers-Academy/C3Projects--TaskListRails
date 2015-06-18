class TaskController < ApplicationController

  def index
    @tasks = Task.all
    render :index
  end

  def show
    id = params[:id]
    @detail = Task.find(id)
    render :show
  end

end
