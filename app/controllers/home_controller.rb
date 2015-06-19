class HomeController < ApplicationController
  def index
    @all_tasks = Task.all
    render :index
  end

  def show
    @task = Task.find(params[:id])
    render :show
  end

  def edit
    @task = Task.find(params[:id])
    render :edit_task
  end

  def update
    @task = Task.find(params[:id])
    @task.update(update_params[:task])
    redirect_to action: :index
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
    @task = Task.find(params[:id])
    render :confirm_remove
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to action: :index
  end



  private

  # these are unsafe and gross. fix to require name, permit description and completed_date

  def update_params
    params.permit!
  end

  def create_params
    params.permit!
  end

end
