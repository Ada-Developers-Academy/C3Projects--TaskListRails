class TasksController < ApplicationController
  def index
    @tasks = Task.all

    render :index
    # This isn't necessary since it's implicit. However
    # we should prefer clarity.
  end

  def show
    @id = params[:id]
    @task = Task.find(@id)
    render :show

  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(create_params[:task])

    if @task.save
      redirect_to root_url # This is preferred if the root is not '/'
    else
      redirect_to tasks_new_path
    end

  end

  def destroy
    @task = Task.destroy(params[:id])

    redirect_to root_url
  end

  def update_status
    id = params[:id]
    update = Task.find(id)

    # Allows you to toggle the read status between read and unread
    if update.comp_status == "unread"
      update.comp_status = "read"
      update.datecomp = Time.now
    else
      update.comp_status = "unread"
    end

    update.save

    redirect_to root_url
  end

  def edit
    @id = params[:id]
    @task = Task.find(@id)
    render :edit

  end

  def update
    @id = params[:id]
    @task = Task.find(@id)
    @task.update(create_params[:task])

    redirect_to root_url
  end


  private

  def create_params
    params.permit(task: [:taskname, :description, :comp_status, :datecomp, :person_id])
  end


end
