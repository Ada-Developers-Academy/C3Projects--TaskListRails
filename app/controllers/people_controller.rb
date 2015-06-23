class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])

    render :show_people
  end

  def show_tasks
    this_person_id = params[:id]
    @person = Person.find(this_person_id)
    @tasks = Task.where(person_id: this_person_id)

    render :show_people_tasks    
  end

end
