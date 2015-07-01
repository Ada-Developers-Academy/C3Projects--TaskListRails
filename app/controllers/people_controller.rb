class PeopleController < ApplicationController
  def index
    @people = Person.all
    render :index
  end

  def show
  end

end
