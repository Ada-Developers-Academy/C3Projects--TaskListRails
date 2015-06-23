class PersonController < ApplicationController
  def index
    @person = Person.all
    # @tasks = Task.where(person_id: @person.id)
    render :index
  end

  def show
    @id = params[:id]
    @person = Person.find(@id)
    render :show
  end

  def persons_tasks
    @id = params[:id]
    @person = Person.find(@id)
    render :persons_tasks
  end
end
