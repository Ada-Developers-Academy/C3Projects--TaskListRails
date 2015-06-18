class TasksController < ActionController::Base
  def index
    @title = "Task List"
    @all_tasks = Task.all

    render :home
  end

  def show
    @task_id =params[:id]
    @task = Task.find(@task_id)
    @title = @task.name + "Details"

		render :details
	end

end
