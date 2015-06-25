class PeopleController < ApplicationController
  def index
    @title = "People List"
    @all_people = Person.all

    render :people
  end

  def show
    @person_id =params[:id]
    @person = Person.find(@person_id)
    @title = "Tasks for " + @person_id

    render :assigned_to
  end
end
