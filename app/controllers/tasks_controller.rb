class TasksController < ApplicationController
  def index
    @tasks = Task.all #on Task class #AR makes this available on this model and all the records of the db
    @header = "Fresh Prince To-Do List"
    @footer = "Create New Task"
    @path = "tasks/new"
    @footer2 = "See the Homies"
    @path2 = "/people"
    render :index
  end

  def new
    @new_task = Task.new
    @people = Person.all.map { |person| person.name }
    @header = "Add a Task"
    @footer = "Back to All the Tasks"
    @path = "/"
  end

  def create
    @new_task = Task.new(create_params[:task]) #pass params to diff function which should return params.require
    @new_task.save
    redirect_to "/" #redirect to / which will call index method and render tasks. render triggers that erb and redirects go somewhere else and triggers erb there
  end

  def edit
    @task = Task.find(params[:id])
    @header = "Edit Your Task, Man"
    @footer = "Back to All the Tasks"
    @path = "/"
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
    @header = "You Sure You Wanna Delete Your Task?"
    #why dont I need render confirm? is it implicit that it will render the same name as the...?
  end

  def show
    @task = Task.find(params[:id])
    @header = "Task Details"
    @footer = "Back to the List"
    @path = "/"
    @footer2 = "Update Your Task"
    @path2 = "#{@task.id}/edit"
    render :show
  end

  def completed
    @task = Task.find(params[:id])
    # When the user marks a task complete, the list will list the date completed as the current datetime
    @task.completed_at = "#{Time.now}"
    @task.save
    redirect_to '/'
  end

  def not_completed
    @task = Task.find(params[:id])
    @task.completed_at = ""
    @task.save
    redirect_to '/'
  end

  private

  def create_params
    # params[:task][:person_id] = Person.find_by(name: params[:task][:person_id]).id
    params.permit(task: [:name, :description, :completed_at, :person_id]) #allow to be able to change those attributes (name, desc, etc)
  end
# params [task][person_id] holds the name bc that's what the form saves
# reassigning the person_id to be person.id (for person with that name)
# within task of params, find person_id
# unless params[:task].nil?
end
