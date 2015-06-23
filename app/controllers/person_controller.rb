class PersonController < ApplicationController
  def index
    @people = Person.all

    render :index
  end

  def show
    # @person = :person_by_id
    @person = Person.find(params[:id])
  end

  def tasks
    @person = Person.find(params[:id])
    @tasks = @person.tasks.all

  end

  private

  def create_params
    params.permit(person: [:name])
  end

end
