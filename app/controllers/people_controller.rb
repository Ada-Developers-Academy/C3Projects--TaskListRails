class PeopleController < ApplicationController
  def index
    @people = Person.all
    render :index
    # This isn't necessary since it's implicit. However
    # we should prefer clarity.
  end

  def show
    @person = Person.find(params[:id])
    render :show
  end

  def tasks
    @person = Person.find(params[:id])
    @tasks = @person.tasks
    render :tasks
  end

end
