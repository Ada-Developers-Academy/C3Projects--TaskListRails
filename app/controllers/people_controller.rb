class PeopleController < ApplicationController

  def index
    @all_people = Person.all

    render :index
  end

  def show
    @person = Person.find(params[:id])

    render :person
  end

  def all_tasks
    @person = Person.find(params[:id])
    @all_tasks = @person.tasks

    render :all
  end

end
