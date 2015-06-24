class TasksController < ApplicationController
  def index
    @tasks = Task.all #on Task class #AR makes this available on this model and all the records of the db
    render :index
  end

  def new
    @new_task = Task.new
  end

  def create
    @new_task = Task.new(create_params[:task]) #pass params to diff function which should return params.require
    @new_task.save
    redirect_to "/" #redirect to / which will call index method and render tasks. render triggers that erb and redirects go somewhere else and triggers erb there
  end

  def edit
    @task = Task.find(params[:id])
    render :edit
  end

  def update
    @task = Task.find(params[:id])
    @task.update(create_params[:task])
    redirect_to "/"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/"
  end

  def confirm
    @task = Task.find(params[:id])
    # line 27 & line 28 same thing but shows it differently bc different views..so how does it update with the deleted task by going to destroy?
    #why dont I need render confirm? is it implicit that it will render the same name as the...?
    # should method be same name as view? destroy/delete, show/show, edit/@edit_task/update?
  end

  def show
    @task = Task.find(params[:id])
    render :show
  end

  def completed_task
    @task = Task.find(params[:id])
    render :index
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_at])
  end

end
