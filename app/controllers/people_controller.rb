class PeopleController < ApplicationController

def index
  @header = "Minions"
  @all_people = Person.all
end

def show
  @header = "Person Details"
  @person = Person.find(params[:id])
end

def tasks
  @person = Person.find(params[:id])
  @tasks = Task.where(:person_id => @person.id)
  @header = "#{@person.name}'s Tasks"
end

end
