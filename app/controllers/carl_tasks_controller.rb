class CarlTasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def task
    if params[:id]
      @task = Task.find(params[:id])
    else
      redirect_to "/"
    end
  end

  def about
  end

  def complete
    if params[:id]
      @task = Task.find(params[:id])
    else
      @tasks = Task.all
    end
  end

  def create
    if params[:id]
      @task = Task.find(params[:id])
    else
      @tasks = Task.all
    end
  end

  def update
    if params[:id]
      @task = Task.find(params[:id])
    else
      @tasks = Task.all
    end

    render :create
  end

  def delete
    if params[:id]
      @task = Task.find(params[:id])
    else
      @tasks = Task.all
    end
  end
end
