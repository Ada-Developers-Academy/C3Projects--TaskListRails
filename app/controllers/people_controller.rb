class PeopleController < ApplicationController

  def index
    @people = Person.all
    @task = Task.all

    Task.where(:completed_at => nil).count

    render :index

  end

end
