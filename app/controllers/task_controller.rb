class TaskController < ApplicationController

  def index
    @tasks = Task.all
    # Task.set_completion(@tasks)
    render :index
  end


  def show
    @id = params[:id]
    @task = Task.find(@id)
  end
end
