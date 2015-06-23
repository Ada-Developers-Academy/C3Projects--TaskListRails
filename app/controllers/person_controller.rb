class PersonController < ApplicationController
  def index
    @person = Person.all
    @tasks = Task.all
    render :index
  end

  def show
    @id = params[:id]
    @person = Person.find(@id)
    render :show
  end
end
