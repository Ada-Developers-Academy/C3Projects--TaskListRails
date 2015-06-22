class DisplayTasksController < ApplicationController
  def index
    @tasks = Task.all
    
    render :tasks
  end

  def new
    @task = Task.new
    render :add_task_form
  end

  def show
    @task = Task.find_by id: params[:task_id]
    render :task
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to :tasks
  end

  def destroy
    @task = Task.find(params[:task_id])
    @task.destroy

    redirect_to :tasks
  end

  def edit
    @task = Task.find(params[:task_id])

    render :edit
  end

  def update
    @task = Task.find(params[:task_id])
    new_name         = params[:task][:name]
    new_description  = params[:task][:description]
    new_completed_at = params[:task][:completed_at]

    @task.update(name:         new_name,
                 description:  new_description,
                 completed_at: new_completed_at)

    render :task
  end

  def mark_complete
    @task = Task.find(params[:task_id])
    new_completed_at = Time.now

    @task.update(completed_at: new_completed_at)

    redirect_to :tasks
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_at])
  end
end
