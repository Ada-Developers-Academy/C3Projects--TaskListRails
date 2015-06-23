class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :complete, :destroy]

  # GET /tasks
  def index
    @all_tasks = Task.all
    # render :index
  end

  # GET /tasks/:id
  def show
    render :show_task
  end

  # GET /tasks/new
  def new
    @task = Task.new
    @all_people = Person.all
    render :new_task
  end

  # GET /tasks/:id/edit
  def edit
    @all_people = Person.all
  end

  # POST /tasks
  def create
    # TODO: require task name from the user
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path
    else
      render :new_task
    end
  end

  # PATCH/PUT /tasks/:id
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

  # DELETE /tasks/:id
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
