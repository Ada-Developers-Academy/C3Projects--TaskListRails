class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @task_name = @task.name
    @task_description = @task.description

    @completed = false

    if @task.completed_date != nil
      @task_completed_date = @task.completed_date
      @completed_date =  @task_completed_date.strftime("%m/%d/%Y")
      @completed = true
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to "/"
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @task.save

    redirect_to "/"
  end


  private

  def create_params
    params.permit(task: [:id, :name, :description, :completed_date])
  end

end
