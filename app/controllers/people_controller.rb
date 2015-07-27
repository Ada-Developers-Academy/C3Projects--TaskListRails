class PeopleController < ApplicationController

  def index
    @people = Person.all
    @people_hash = {}
    @people.each do |person|
      @tasks_completed = person.tasks.where(completed: true)
      @people_hash[person.name] = @tasks_completed.count
    end
    @people_hash
  end

  def show
    @person = Person.find(params[:id])
    @tasks = @person.tasks.where(person_id: @person.id)
  end 

end