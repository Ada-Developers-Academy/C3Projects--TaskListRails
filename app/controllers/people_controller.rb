class PeopleController < ApplicationController
  def index
    @all_people = Person.all

    @title  = "All the people"
  end

  def show
    @person = Person.find(params[:id])

    @title = "Some info on #{@person.name}"
  end

  def show_tasks
    @person = Person.find(params[:id])

    @title = "#{@person.name}'s tasks"
  end
end
