class TaskController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @id = params[:id]
    @task = Task.find(@id)
  end

end
