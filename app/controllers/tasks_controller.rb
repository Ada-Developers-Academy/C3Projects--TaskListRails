class TasksController < ApplicationController
  # set_task will be called before show, edit, update, or destroy
  before_action :set_task, only: [:show, :edit, :update, :complete, :destroy]

  # GET /tasks
  def index
    @all_tasks = Task.all
    # render :index
  end

  # GET /tasks/:id
  def show
    # @task = Task.find(params[:id])
    render :show_task
  end

  # GET /tasks/new
  def new
    @task = Task.new
    render :new_task # return an HTML form for creating a new task
  end

  # # GET /tasks/:id/edit  tasks#edit return an HTML form for editing a task
  # def edit # while this is empty, don't need to define
  # end

  # POST /tasks
  # create a new task
  def create
    # TODO: require task name from the user
    @task = Task.new(task_params)

    if @task.save
      # redirect_to @task # ash prefers this
      redirect_to tasks_path # required for project requirements
    else
      render :new_task
    end
  end

  # PATCH/PUT /tasks/:id
  # update a specific task
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

  # # DELETE /tasks/:id
  # delete a specific task
  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "\"#{@task.name}\" was deleted."
  end

  private
    # use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.permit(task: [:name, :description])[:task]
    end
end
