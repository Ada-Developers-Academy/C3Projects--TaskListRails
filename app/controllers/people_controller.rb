class PeopleController < ApplicationController
  def index
    @displaypeople = Person.all

    render :index
    # This isn't necessary since it's implicit. However
    # we should prefer clarity.
  end


end
