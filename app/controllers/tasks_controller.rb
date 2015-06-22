class TasksController < ApplicationController

  def index
    @all_tasks = Task.all   # NOTE TO SELF: "@all_tasks" is actually a Task::ActiveRecord_Relation object, but responds to array methods
    completed_instance_var

    render :index   # NOTE TO SELF: this is for clarity, you don't actually need this in this case
  end

  def completed_status
    @task = Task.find(params[:id])
    if @task[:completed_at].nil?
      Task.completed(params[:id])
    else
      Task.not_completed(params[:id])
    end

    redirect_to "/"
  end

  def show
    task_instance_vars
    @button_visibility = "visible"
    @delete_visibility = "invisible"

    render :task   # NOTE TO SELF: "render 'task'" also would work
  end

  def show_before_delete
    task_instance_vars
    @button_visibility = "invisible"
    @delete_visibility = "visible"

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

  def edit
    task_instance_vars

    render :edit
  end

  def update
    @task = Task.find(params[:id])
    @task.attributes = {
      name: edit_params[:task][:name],
      description: edit_params[:task][:description],
      completed_at: edit_params[:task][:completed_at]
    }
    @task.save

    # (edit_params[:task])

    redirect_to "/tasks/#{params[:id]}"
  end

  def destroy
    # @task = Task.find(params[:id])
    Task.destroy_one(params[:id])

    redirect_to "/"
  end

  def destroy_all
    @all_completed_tasks = Task.completed

    render :delete_all
  end

  def destroy_all_completed
    Task.destroy_all_completed

    redirect_to "/"
  end

  private

  def completed_instance_var
    # QUESTION: Constant's don't really work, do they? (Didn't work for me.)
    # @visibility = @task[:completed_at].nil? ? "invisible" : "visible"
    # What is this?: "\u2713".force_encoding("UTF-8")
  end

  def task_instance_vars
    # NOTE!!! Need to read up on params to show unique URLs!
    @task = Task.find(params[:id])
    @task_id = @task[:id]
    @task_name = @task[:name]
    @task_desc = @task[:description]
    @task_completed_at = @task[:completed_at]
    @task_status = @task[:completed_at].nil? ? "NEED TO PLAY" : "FINISHED"
    @task_completion_date = @task[:completed_at].nil? ? "N/A" : date_format(@task[:completed_at])
    @task_created_at = date_format(@task[:created_at])
    @task_updated_at = date_format(@task[:updated_at])
  end

  def date_format(datetime)
    datetime.strftime("%m/%d/%Y %l:%M %p")
  end

  def create_params
    # NOTE!!!: Definately look up info on this.
    params.permit(task: [:name, :description])
  end

  def edit_params
    params.permit(task: [:name, :description, :completed_at])
  end

end
