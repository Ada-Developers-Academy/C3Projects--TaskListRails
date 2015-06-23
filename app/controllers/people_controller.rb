class PeopleController < ApplicationController

  def index
    @people = Person.all
    render :index
  end

  def show
    @person = Person.find(params[:id])
    render :person
  end
 
  def person_tasks
    @person = Person.find(params[:id])
    render :person_tasks
  end
end
