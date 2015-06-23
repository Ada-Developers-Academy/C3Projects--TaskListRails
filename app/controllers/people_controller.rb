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
    @name = Person.find(@person_id)

    render :show
  end

end
