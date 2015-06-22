class PeopleController < ApplicationController

  def index
    @people = People.all
  end

  def show

  end

end
