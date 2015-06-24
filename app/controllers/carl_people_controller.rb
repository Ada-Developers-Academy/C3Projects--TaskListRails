class CarlPeopleController < ApplicationController
  #----------------- SHOW A PERSON --------------------
  def show
    @person = Person.find(params[:id])
    @tasks_count = @person.tasks.count
    @tasks_wip = @person.tasks.where(date_complete: nil).count
    @tasks_done = @tasks_count - @tasks_wip
  rescue
    redirect_to "/person_not_found"
  end

  #----------------- SHOW A PERSON'S TASKS --------------------
  def tasks
    # called people & in an array b/c that's what carl_tasks#index expects
    @people = [Person.find(params[:id])]
    @tasks = @people[0].tasks

    render "carl_tasks/index"
  rescue
    redirect_to "/person_not_found"
  end

  #----------------- SHOW ALL THE PEOPLE --------------------
  def people
    @people = Person.all
  end
end # class
