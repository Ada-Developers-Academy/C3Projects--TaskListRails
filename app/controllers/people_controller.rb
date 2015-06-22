class PeopleController < ApplicationController
  def index
    @people = Person.all

  end

  def show
    @person = Person.find(params[:person_id])
    

    render :person_tasks
  end
end
