class PersonController < ApplicationController
  def index
    @title = "People List"
    @all_people = Person.all

    render :people
  end
end
