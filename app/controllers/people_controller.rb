class PeopleController < ApplicationController

  def index
    # grabs all the people
    @people = Person.all
    @tasks = Task.all
  end

end
