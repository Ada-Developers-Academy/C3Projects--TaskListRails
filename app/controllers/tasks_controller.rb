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
  # def edit
  # end

  # POST /tasks
  # create a new task
  def create
    # TODO: require task name from the user
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        # format.html { redirect_to @task } # Ash prefers this
        format.html {redirect_to tasks_path} # required for project requirements
        # format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new_task }
        # format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/:id
  # update a specific task
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task }
        # format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, notice: 'Sorry, something went wrong =(' }
        # format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def complete
    respond_to do |format|
      if @task.update(completed_at: Time.now)
        format.html { redirect_to tasks_path }
      else
        format.html { redirect_to @task }
      end
    end
  end


  # # DELETE /tasks/:id
  # delete a specific task
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_path, notice: "\"#{@task.name}\" was deleted." }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.permit(task: [:name, :description])[:task]
    end
end
