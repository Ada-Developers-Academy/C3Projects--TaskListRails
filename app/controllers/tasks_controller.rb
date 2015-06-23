class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :complete, :destroy]

  def index
    @all_tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
    @all_people = Person.all
  end

  def edit
    @all_people = Person.all
  end

  def create
    # TODO: require task name from the user
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path
    else
      render :new, notice: 'Sorry, something went wrong =('
    end
  end

  def update
    if params[:complete]
      @task.change_complete_status(params[:complete])
      redirect_to tasks_path
    elsif @task.update(task_params)
      redirect_to @task
    else
      render :edit, notice: 'Sorry, something went wrong =('
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "\"#{@task.name}\" was deleted."
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.permit(task: [:name, :description, :person_id])[:task]
    end
end
