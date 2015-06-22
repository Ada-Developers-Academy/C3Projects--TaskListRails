class TaskController < ApplicationController

  def index
    @tasks = Task.all
    # update completed column to reflect whether or not there is a completion date.
    @tasks.each do |task|
      if task.date_completed == nil
         task.update(completed: "false")
      else
        task.update(completed: "true")
      end
       task.save
     end
    # order tasks to put incomplete tasks first, then by name.
    @tasks = @tasks.order(:date_completed, :task_name)

    render :index
  end

  def show
    @id = params[:id]
    @task = Task.find(@id)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(create_params[:task])
    
    @task.save
    redirect_to root_url
  end

  def edit
    show
  end

  def update
    show
    @task.update(task_name: params[:task][:task_name],
                 description: params[:task][:description],
                 date_completed: params[:task][:date_completed])
    @task.save

    redirect_to root_url
  end

  # For tasks marked as complete through the checkbox on the index page,
  # update completed to true and date_completed to now.
  def complete
    @task = Task.update(params[:id], completed: "true", date_completed: Time.now)
    @task.save

    redirect_to root_url
  end

  # For tasks marked as incomplete through the checkbox on the index
  # page, update completed to false and date_completed to nil.
  def incomplete
    @task = Task.update(params[:id], completed: "false", date_completed: nil)
    @task.save

    redirect_to root_url
  end

  def delete
    @delete_task = Task.destroy(params[:id])

    redirect_to root_url
  end

  private

  def create_params
    params.permit(task: [:task_name, :description, :completed, :date_completed])
    params.permit(person: [:name])

  end

end
