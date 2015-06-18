class HomeController < ApplicationController
  def index
    @all_tasks = Task.all
    render :index
  end

  def show
    @one_task = Task.find(params[:id])
    render :show
  end

end
