class PeopleController < ApplicationController
  def index
    @people = Person.all
    @header = "List of the Fam"
    @footer = "< Back to All of the Tasks >"
    @path = "/"
    render :index
  end

  def show
    @person = Person.find(params[:id])
    @header = "Homie Details"
    @footer = "< Back to Your List of Homies >"
    @path = "/people"
    render :show
  end

  def all_tasks
    @person = Person.find(params[:id])
    @tasks =  @person.tasks
    @header = "< #{@person.name}'s Tasks >"
    @footer = "< Back to #{@person.name}'s Page> "
    @path = "/people"
    render :all_tasks
  end

end
