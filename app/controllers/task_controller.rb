class TaskController < ApplicationController
  def index
    @tasks = Task.all

    render :index
  end

  def show
    @task = Task.find(params[:id])

    render :show
  end

  def new
    @task = Task.new

    render :add_task
  end

  def create
    @task = Task.new(create_params[:task])
    @task.save

    index
  end

  def delete
    @task = Task.find(params[:id])

    render :delete
  end

  def confirm_delete
    @task = Task.find(params[:id])
    @delete_task = Task.delete(@task)

    redirect_to :root
  end

  def update
    Task.update((params[:id]), completed_on: Time.now)

    index
  end

  def uncheck_update
    Task.update((params[:id]), completed_on:" ")

    index
  end

  def edit
    @task = Task.find(params[:id])

    render :edit_task
  end

  def edit_update
    @task = Task.find(params[:id])
    @name = create_params[:task][:name]
    @description = create_params[:task][:description]
    @completed_on = create_params[:task][:completed_on]
    @person_id = create_params[:task][:person_id]
    @task.update(name: "#{@name}", description: "#{@description}", completed_on: "#{@completed_on}", person_id: "#{@person_id}")
    @task.save

    render :show
  end

  private

  def create_params
    params.permit(task: [:name, :description, :completed_on, :person_id])
  end

end
