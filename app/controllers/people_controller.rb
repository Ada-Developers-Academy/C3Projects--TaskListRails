class PeopleController < ApplicationController
  def index
    @people = Person.all
    @tasks = Task.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def tasks
    @person = Person.find(params[:id])
    tasks = Task.all
    @tasks = tasks.where(person_id: @person.id)
  end
end
