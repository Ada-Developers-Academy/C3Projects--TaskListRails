class DisplayTaskController < ApplicationController
  def index
    @all_tasks = Task.all
    render :index
  end

  def links
    @id = params[:id]
    @task = Task.find(@id)
    render :single_task
  end
end
