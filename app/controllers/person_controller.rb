class PersonController < ApplicationController
  def index
    @person = Person.all
    @tasks = Task.group(:person_id)
    render :index
  end

  def show
    @id = params[:id]
    @person = Person.find(@id)
    render :show
  end
end
