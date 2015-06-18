class TaskController < ApplicationController
  def index
    @all_tasks = Task.all
    render :index
  end

end
