class TaskController < ApplicationController
  def index
    @displaytasks = Task.all
    render :index # This isn't necessary since it's implicit. However
    # we should prefer clarity.
  end

  def show
    @id = params[:id]
    @onedeet = Task.find(@id)
    render :show

  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save

  end

end
