class PeopleController < ApplicationController
  def index
    @people = Person.all
    render :index
  end


  def show
    @person_id = params[:id]
    @person = Person.find(params[:id])
    @title = "All Tasks For" + @person_id
    render :show
  end


end
