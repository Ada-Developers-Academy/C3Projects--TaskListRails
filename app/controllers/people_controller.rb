class PeopleController < ApplicationController

  def index
    @person = Person.all?
    render :index
  end
 
  Add a new people (the plural of Person) controller with the following routes and actions
  index action: Show a list of all people in the database.
  Link each Person's name to their show action.
  The index should include a count of how many uncompleted tasks are assigned to each Person.
  show action: show all of the Person's information
  Create a custom route and action for showing a complete list of a Person's tasks, both complete and incomplete.
  The url of this page should look something like http://localhost:5000/people/1/tasks.
  Link to this action from a Person's show view.
  Deploy your completed app to Heroku.
end
