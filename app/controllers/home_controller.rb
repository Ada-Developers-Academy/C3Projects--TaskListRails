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

  def confirm_remove
    @remove_task = Task.find(params[:id])
    render :confirm_remove
  end

  def delete
    @remove_task = Task.find(params[:id])
    @remove_task.destroy
    redirect_to action: :index
  end



  private

  def create_params
    # this is unsafe and gross. fix to require name, permit description and completed_date
    params.permit!
  end

end
