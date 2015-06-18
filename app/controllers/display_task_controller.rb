class DisplayTaskController < ApplicationController
  def index
    @all_tasks = Task.all
    render :index
  end

  def links
    @task = Task.where(name: "#{params[:task]}")
    render :single_task
  end
end
