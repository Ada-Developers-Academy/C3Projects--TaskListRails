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

    redirect_to root_url
  end

  def destroy
    # local variables here cuz it's not being displayed / used elsewhere
    id = params[:id]
    onetask = Task.find(id).destroy

    redirect_to root_url
  end

  private

  def create_params
    params.permit(task: [:taskname, :description])
  end


end
