class TaskController < ApplicationController

  def index
    @tasks = Task.all
    render :home
  end

  def displaytask(id)
    @task = Task.find(id)
    render :displaytask
  end

end
