class TaskController < ApplicationController

  def index
    @tasks = Task.all
    render :home
  end

  def show
    # need to get id from the params hash
    @id = params[:id]
    @task = Task.find(@id)
    render :show
  end

  def create
    @task = Task.new
  end

  def created

  end

end
