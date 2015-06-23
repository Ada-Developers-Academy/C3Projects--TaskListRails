class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
    @tasks = Task.where(person_id: params[:id])

    # completed_tasks will be the number of completed tasks we have
    @completed_tasks = 0
    @tasks.each do |task|
      @completed_tasks += 1 if task.completed_at
    end
    # total_tasks is the number of total tasks this person has
    @total_tasks = @tasks.count

    render :show_people
  end

  def show_tasks
    this_person_id = params[:id]
    @person = Person.find(this_person_id)
    @tasks = Task.where(person_id: this_person_id)

    render :show_people_tasks
  end

end
