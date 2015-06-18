class TaskController < ApplicationController

  def index
    @tasks = Task.all   # now we can use this instance var in our views
    render :index
  end


  def show
    @id = params[:id]
    @task = Task.find(@id)
  end
end
