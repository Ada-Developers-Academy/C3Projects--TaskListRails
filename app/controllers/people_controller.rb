class PeopleController < ApplicationController
  def index
    @displaypeople = Person.all
    render :index
    # This isn't necessary since it's implicit. However
    # we should prefer clarity.
  end

  def show
    @id = params[:id]
    @person = Person.find(@id)
    render :show
  end

  def tasks
    render :tasks
  end

end
