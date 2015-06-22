class PeopleController < ApplicationController

  def index
    @all_people = Person.all
    render :index
  end

  def show
    @person = Person.find(params[:id])
    render :show
  end

end
