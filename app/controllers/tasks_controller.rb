class TasksController < ApplicationController

  def index
    @all_tasks = Task.all
    render :home
  end

  def show
    @show_task = Task.find(params[:id])
    render :show
  end

  # renders the delete page
  def confirm_deletion
    @delete_task = Task.find(params[:id])
    render :confirm_deletion
  end

  # actually deletes the task. may want to check if need to use instance variables in my actions
  def destroy
    @delete_task = Task.find(params[:id])
    @delete_task.destroy
    redirect_to root_url
  end

  def new
    @new_task = Task.new
  end

  def create
    @new_task = Task.new(create_params[:task])
    @new_task.save
    redirect_to root_url
  end

private

# strong params
def create_params
  params.permit(task: [:name, :description, :completed_date])
end

end
