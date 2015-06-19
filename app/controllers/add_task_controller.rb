class AddTaskController < ApplicationController
  def new
    @task = Task.new(params.permit(:name, :description))
  end

  def create
    @task = Task.create(create_params[:task])

    redirect_to '/'
  end

  private

  def create_params
    params.permit(task: [:name, :description])
  end
end
