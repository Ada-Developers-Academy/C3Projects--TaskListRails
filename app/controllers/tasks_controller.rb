class TasksController < ApplicationController

  def index
    @all_tasks = Task.all   # NOTE TO SELF: "task" is actually a Task::ActiveRecord_Relation object, but responds to Array methods
    @completed = "COMPLETED"
    @uncompleted = "UNCOMPLETED"

    render :index   # for clarity, you don't actually need this in this case
  end

  def show
    @task = Task.find(params[:id])
    # QUESTION: Is it possible to make the below instances variables available to both index & show? (A constant didn't work...)
    @completed = "COMPLETED"
    @uncompleted = "UNCOMPLETED"
    @status = @task[:completed_at].nil? ? @uncompleted : @completed

    render :task
  end

  def new
    @task = Task.new

    render :new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to "/" # Why does this not work with :index?
      # NOTE TO SELF: Look up other ways to write 'redirect_to'.
  end

  private

  def create_params
    params.permit(task: [:name])
  end

end
