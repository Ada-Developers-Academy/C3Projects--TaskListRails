class TasksController < ApplicationController
#standard naming conventions would say we use the pluralized word tasks since it is a collection of all Task instances
  def index
    @tasks = Task.all
  end

#standard convention would say we should use singular task since it is one instance of a Task <--name of model
  def show
    @task = Task.find(params[:id])
  end

end
