class PeopleController < ApplicationController
  def index
    @people = Person.all

  end

  def show
    @person = Person.find(params[:person_id])
    @tasks = Task.where(person_id: @person.id)

    render :person_tasks
  end
end
