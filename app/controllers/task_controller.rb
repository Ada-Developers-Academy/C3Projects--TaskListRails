class TaskController < ApplicationController
  def show
    id = params[:id]
    @task = Task.find(id)
  end
end
