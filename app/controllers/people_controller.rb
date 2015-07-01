class PeopleController < ApplicationController
  def index
    @people = Person.all
    render :index
  end

  def show
    @person = Person.find(params[:id])
    render :show
  end

  def all_tasks
    @person = Person.find(params[:id])
    @tasks = Task.where(:person_id => @person.id)
    render :all_tasks
  end

end
