class CarlPeopleController < ApplicationController
  #----------------- SHOW A PERSON --------------------
  def show
    begin
      @person = Person.find(params[:id])
    rescue
      redirect_to "/person_not_found"
    end

    @tasks_count = @person.tasks.count
    @tasks_wip = @person.tasks.where(date_complete: nil).count
    @tasks_done = @tasks_count - @tasks_wip
  end

  #----------------- SHOW A PERSON'S TASKS --------------------
  def tasks
    begin
      @person = Person.find(params[:id])
    rescue
      redirect_to "/person_not_found"
    end

    @tasks = @person.tasks

    @people = [{
        id: @person.id,
        name: @person.name,
        count: @person.tasks.where(date_complete: nil).count
      }]

    render "carl_tasks/index"
  end

  #----------------- SHOW ALL THE PEOPLE --------------------
  def people
    people = Person.all
    @people = []
    people.each do |person|
      tasks_count = person.tasks.count
      tasks_wip = person.tasks.where(date_complete: nil).count
      tasks_done = tasks_count - tasks_wip
      percent_complete = ((tasks_done.to_f / tasks_count.to_f).round(2) * 100).to_i

      @people.push({
        person: person,
        tasks_count: tasks_count,
        tasks_wip: tasks_wip,
        tasks_done: tasks_done,
        percent_complete: percent_complete
      })
    end
  end
end # class
