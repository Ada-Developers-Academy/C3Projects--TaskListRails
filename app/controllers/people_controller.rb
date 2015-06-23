class PeopleController < ApplicationController

  def index
    @all_people = Person.all
    render :index
  end

  def show
    @person = Person.find(params[:id])
    render :show
  end

  def tasks
    @person = Person.find(params[:id])
    @all_tasks = Task.where("person_id = ?", params[:id])
    render :tasks
  end

end
