require "time"

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

    @tasky = Task.new
  end

  def created
    task = task_params[:task]
    name, description = task[:name], task[:description]

    date = date_params[:start_date]
    date_complete = (task[:complete] == "1") ? Date.parse("#{ date[:year] }/#{ date[:month] }/#{ date[:day] }") : ""

    if task[:id]
      id = task[:id]

      Task.find(id).update(name: name, description: description, date_complete: date_complete)

    else
      task.except!(:complete)

      if date_complete != ""
        task[:date_complete] = date_complete
      end

      Task.create(task)

      id = Task.last.id
    end

    redirect_to "/task/#{ id }"
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

  def deleted
    if params[:id]
      Task.destroy(params[:id])

      redirect_to "/"
    end
  end

  private

  def task_params
    params.permit(task: [:id, :name, :description, :complete])
  end

  def date_params
    params.permit(start_date: [:year, :month, :day])
  end
end
