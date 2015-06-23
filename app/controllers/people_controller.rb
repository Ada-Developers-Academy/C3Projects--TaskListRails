class PeopleController < ApplicationController

 def index
 	@people = Person.all
 	render :index
 end

 def show
 	@person = Person.find(params[:id])
 	render :show
 end

 def tasks
 	@person = Person.find(params[:id])
 	render :tasks
 end

 def new_owner
 	@person = Person.new
 	render :new
 end

 def create_owner
 	@person = Person.new(create_params[:person])
	@person.save

	redirect_to '/people'
 end

 ################### PRIVATE METHODS ###################

	private

  def create_params
    params.permit(person: [:name])
  end

end
