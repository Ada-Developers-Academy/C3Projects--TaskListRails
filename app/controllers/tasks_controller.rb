class TasksController < ApplicationController
  def index
    @tasks = Task.all_tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save
    redirect_to "/"
  end

  def delete
    @task = Task.find(params[:id])
    @task.delete #destroy without save
    @task.save
    redirect_to "/"
  end

  def update_complete
    task = Task.find(params[:id])
    task.completed_at ? task.completed_at = "" : task.completed_at = Time.new
    task.save

    redirect_to "/"
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    edited_task = params[:task]

    task.update(name: edited_task[:name],
                description: edited_task[:description],
                completed_at: edited_task[:completed_at],
                person_id: edited_task[:person_id]
    )

    redirect_to "/show/#{params[:id]}"
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_at, :person_id])
  end
end
