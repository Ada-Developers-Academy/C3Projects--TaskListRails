class TaskController < ApplicationController
  def index
    @displaytasks = Task.all
    render :index # This isn't necessary since it's implicit. However
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
    # Guard clause against empty tasknames
    @taskname = params[:task][:taskname]
    #Checks if string is empty, sets it to null to trigger db-level error
    if @taskname.length == 0
      @taskname = nil
    else
      @task = Task.new(create_params[:task])
    end

    @task.save
    redirect_to root_url # This is preferred if the root is not '/'

    # What the user sees if they his a db-level error
    rescue => error
      render :fancy_error

  end

  def destroy
    # local variables here cuz it's not being displayed / used elsewhere
    id = params[:id]
    destroytask = Task.find(id).destroy

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
    @task = Task.update(@id, (create_params[:task]))
    # @task = Task.find(@id)
    # Task.update(@id, :taskname => params[:task][:taskname],
    # :description => params[:task][:description],
    # :datecomp => params[:task][:datecomp],
    # :comp_status => params[:task][:comp_status])
    # raise
    @task.save

    redirect_to root_url
  end


  private

  def create_params
    params.permit(task: [:taskname, :description, :comp_status, :datecomp])
  end


end
