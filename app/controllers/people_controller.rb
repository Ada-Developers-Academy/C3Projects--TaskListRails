class PeopleController < ApplicationController

  def index
    @people = Person.all
    @task = Task.all

    Task.where(:completed_at => nil).count

    render :index

  end

  def show
    @task = Task.find(params[:id])

    @person_id = @task.person_id
    @person = Person.find(params[:id])

    render :show
  end

  def tasks
    @person = Person.find(params[:id])
    @tasks = Task.where(:person_id => @person.id)

  end

end
