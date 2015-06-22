class PeopleController < ApplicationController
  def index
    @all_people = Person.all

    @title  = "All the people"
  end

  def show
    @person = Person.find(params[:id])
  end

  # def show
  #   @task          = Task.find(params[:id])
  #   @date          = @task.date_completed ? @task.date_completed.strftime("%m-%d-%Y") : nil
  #   @creation_date = @task.created_at.strftime("%m-%d-%Y")

  #   @title         = @task.name
  #   @headline      = "Voilà, your task"
  # end

  # private

  # def create_params
  #   params.permit(person: [:name])
  # end
end
