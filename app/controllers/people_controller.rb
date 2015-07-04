class PeopleController < ApplicationController

  def index
    @people = Person.all.order('created_at')
  end

  def show
    @person = Person.find(params[:id])
  end
 
  def person_tasks
    @person = Person.find(params[:id])
  end
end
