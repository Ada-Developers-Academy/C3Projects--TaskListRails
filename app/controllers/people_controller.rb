class PeopleController < ApplicationController

  def index
    # grabs all the people
    @person = Person.all
  end

end
