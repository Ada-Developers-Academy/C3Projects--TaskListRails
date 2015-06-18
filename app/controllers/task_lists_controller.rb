class TaskListsController < ApplicationController
  def index
    @tasks = Task.all #on Task class #AR makes this available on this model and all the records of the db
    render :index
  end

  def show
    @show = Task.find(params[:id])
    render :show
  end
end


#variable to store all the tasks and use that variable
