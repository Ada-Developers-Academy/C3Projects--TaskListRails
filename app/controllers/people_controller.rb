class PeopleController < ApplicationController
  def index
    @people = Person.all

    render :index
  end

  def show
    @person = Person.find(params[:id])

    render :show
  end

  def show_tasks
    @person = Person.find(params[:id])

    render :tasks
  end

end
