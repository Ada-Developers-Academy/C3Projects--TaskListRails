class PeopleController < ApplicationController

  def index
    @people = Person.all
    render :index
  end

  def show
    @people = Person.find(params[:id])
    render :show
  end
end
