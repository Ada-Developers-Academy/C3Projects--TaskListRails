class PeopleController < ApplicationController
  def index
    @people = Person.all
    
  end

  def show
    @person = Person.find(params[:person_id])

    # add in logic to get
    render :person_tasks
  end
end
