class DisplayTaskController < ApplicationController
  def index
    @all_tasks = Task.all
    @all_people = Person.all
    
    render :index
  end

  def links
    @id = params[:id]
    @task = Task.find(@id)
    person = @task.person_id
    @person = person ? Person.find(person) : nil
    render :single_task
  end
end
