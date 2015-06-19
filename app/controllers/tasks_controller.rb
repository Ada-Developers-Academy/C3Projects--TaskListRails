class TasksController < ApplicationController

  def index
    @all_tasks = Task.all   # NOTE TO SELF: "task" is actually a Task::ActiveRecord_Relation object, but responds to Array methods
    completed_instance_var

    render :index   # for clarity, you don't actually need this in this case
  end

  def show
    task_instance_vars
    @visibility = "invisible"

    render :task
  end

  def show_before_delete
    task_instance_vars
    @visibility = "visible"

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
      # NOTE!!!: Look up other ways to write 'redirect_to'.
  end

  def destroy
    # @task = Task.find(params[:id])
    Task.find(params[:id]).destroy

    redirect_to "/"
  end

  def destroy_all
    @all_completed_tasks = Task.where.not(completed_at: nil)

    render :delete_all
  end

  def destroy_all_completed
    completed_tasks = Task.where.not(completed_at: nil)
    completed_tasks.destroy_all

    redirect_to "/"
  end

  private

  def completed_instance_var
    # QUESTION: Constant's don't really work, do they? (Didn't work for me.)
    @completed = "\u2713"
    @uncompleted = ""
    # What is this?
    # "\u2713".force_encoding("UTF-8")
  end

  def task_instance_vars
    # NOTE!!! Need to read up on params to show unique URLs!
    @task = Task.find(params[:id])
    completed_instance_var
    @status = @task[:completed_at].nil? ? @uncompleted : @completed
  end

  def create_params
    # NOTE!!!: Definately look up info on this.
    params.permit(task: [:name, :description])
  end

end
