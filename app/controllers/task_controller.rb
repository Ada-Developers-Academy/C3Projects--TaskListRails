class TaskController < ApplicationController

  def index
    @tasks = Task.all
    render :index
  end


  def show
    @id = params[:id]
    @task = Task.find(@id)
  end
end
