class PeopleController < ApplicationController
  def index
    @people = Person.all
    @tasks = Task.all
  end

  def show
    @person = Person.find(params[:id])
  end
end
