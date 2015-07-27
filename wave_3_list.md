# (done) Add the ability for the user to mark a task complete
- (done) Add a button to the list of tasks on the homepage that, when clicked, will mark the task complete
  - (done) add a button to the index.erb and a completed view
  - (done) have the button patch and return to the homepage
  - (done) have controller and action for updating the db
  - (done) make sure the db is updated with the date completed (Time)

# (done) User can edit a task's details
- (done) add an edit action that renders a form allowing the user to update all the fields of a task
  - (done) Submitting the form should update the existing task (patch)
    - research ActiveRecord's update method
  - (done) Link to the edit action from the show page
  - (done) )RY up code by reusing the code from the new functionality
    - research: rendering partials in rails
