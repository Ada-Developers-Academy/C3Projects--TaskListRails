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

    render :task
  end
end
