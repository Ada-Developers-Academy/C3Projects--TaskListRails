class PeopleController < ApplicationController
  before_action :set_person, only: [ :show, :edit, :update, :complete, :destroy ]

  def index
    @all_people = Person.all
  end

  def show
  end

  def new
    @person = Person.new
  end

  def edit
    @all_people = Person.all
  end

  def create
    # TODO: require person name from the user
    @person = Person.new(person_params)

    if @person.save
      redirect_to people_path
    else
      render :new, notice: 'Sorry, something went wrong =('
    end
  end

  def update
    if @person.update(person_params)
      redirect_to @person
    else
      render :edit, notice: 'Sorry, something went wrong =('
    end
  end

  def destroy
    @person.delete_associated_tasks
    @person.destroy
    redirect_to people_path, notice: "\"#{ @person.name }\" was deleted."
  end


  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.permit(person: [:name])[:person]
    end
end
