class PeopleController < ApplicationController

  def index
    @all_people = Person.all

    render :index
  end

  def show
    @person = Person.find(params[:id])

    @person_id =        @person[:id]
    @person_name =      @person[:name]
    @person_fav_genre = @person[:fav_genre]

    render :person
  end

  def all_tasks
    @person =      Person.find(params[:id])
    @person_name = @person.name
    @all_tasks =   @person.tasks

    render :all
  end

end
