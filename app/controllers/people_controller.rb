class PeopleController < ApplicationController

  def index
    # grabs all the people
    @people = People.all
  end

  # def show
  #   @person = Task.find(@id).person
  # end

end
