class HomeController < ApplicationController
  def index
    @all_tasks = Task.all
    render :index
  end

  def show
    @show_task = Task.find(params[:id])
    render :show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save
    redirect_to action: :index
  end

  private

  def create_params
    params.permit!
    # params.permit(proposal: [:title, :abstract])
  end

end
