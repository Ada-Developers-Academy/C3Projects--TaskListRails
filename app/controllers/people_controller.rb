class PeopleController < ApplicationController
  before_action :set_person, only: [ :show, :edit, :update, :complete, :destroy ]

  def show
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.permit(person: [:name])[:person]
    end
end
