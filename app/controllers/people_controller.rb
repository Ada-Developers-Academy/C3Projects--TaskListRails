class PeopleController < ApplicationController

  def index
    # grabs all the people
    @people = Person.all
    @tasks = Task.all
  end

  def show
    find_person
  end

  def tasks
    find_person
    find_tasks
  end

  def find_tasks
    tasks = Task.all
    @their_tasks = tasks.where(person_id: @person.id)
  end


  private
    # permissable parameters should be in a private method,
    # ie not accessible outside the class TaskController
    def find_person
      id = params[:id]
      @person = Person.find(id)
    end

    def create_params
      params.permit(task: [:name, :description, :date, :completed, :person_id])[:task]
      # params.require(task: [:name])
    end

end
