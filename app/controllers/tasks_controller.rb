class TasksController < ApplicationController
  def index
    @all_tasks = Task.all
    render :index
  end

  def show
    @task = Task.find(params[:id])
    if @task.completed_date.present?
      @task_css = "completed"
    else
      @task_css = "not_completed"
    end
    render :show
  end

  def edit
    @task = Task.find(params[:id])
    render :edit_task
  end

  def update
    @task = Task.find(params[:id])
    @task.update(form_params[:task])

    redirect_to action: :index
  end

  def mark_done
    @task = Task.find(params[:id])
    @task.update(completed_date: Time.new)
    redirect_to action: :index
  end

  def new
    @task = Task.new
    @people = Person.all
  end

  def create
    @task = Task.new(form_params[:task])
    @task.save
    redirect_to action: :index
  end

  def confirm_remove
    @task = Task.find(params[:id])
    if @task.completed_date.present?
      @task_css = "completed"
    else
      @task_css = "not_completed"
    end
    render :confirm_remove
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to action: :index
  end



  private


  def form_params
    params.permit(task: [:name, :description, :person_id, :completed_date])
  end

end
