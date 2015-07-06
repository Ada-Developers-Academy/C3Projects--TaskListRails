class PeopleController < ApplicationController
  def index
    @people = Person.all
    @header = "People List"
    render :index
  end

  def show
    @person = Person.find(params[:id])
    @header = "Homie Details"
    render :show
  end

  def all_tasks
    @person = Person.find(params[:id])
    @tasks =  @person.tasks
    @header = "#{@person.name}'s Tasks"
    render :all_tasks
  end

end
