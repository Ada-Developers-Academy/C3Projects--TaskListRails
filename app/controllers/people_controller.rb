class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
    @name = @person.name
    @occupation = @person.occupation
    @color = @person.favorite_color
  end

  def tasks
    @person = Person.find(params[:id])
  end

end
