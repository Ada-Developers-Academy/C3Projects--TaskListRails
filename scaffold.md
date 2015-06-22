## Wave 2
In this wave we will add the first set of user interactivity and persistence.
  - (done) Be able to create a new task:
    - (done) The home page should contain a link to Add a new task.
    - (done) form to fill out with the appropriate task fields.
    - (done) After the new task is added, the site should take the user back to the home page which displays the full list of tasks. 
    - (done) The new task that was just added should be included in the full list of tasks.

  - (done) Be able to delete an existing task:
    - (done) Add a route and controller action whose responsibility is deleting a task (RESTful routes)
    - (done) On the home page, add a button or link for each task that will, once clicked...
      1. Ask the user to confirm that they definitely want to delete the task.
      1. Delete the task from the database and redirect the user back to the list of remaining tasks

## Wave 3
In this wave we will extend the interactivity with users, allowing them to edit existing tasks in a couple of different ways. As always, follow RESTful conventions when implementing these features.

- (done) Add the ability for the user to mark a task complete
  - (done) Add a button to the list of tasks on the home page that, when clicked, will mark a task complete.
  - (done) Update the database with the task's completed date
- (done) Add the ability for the user to edit a task's details.
  - (done) Add an `edit` action that renders a form allowing the user to update all the fields of a task.
  - (done) Submitting the form from the `edit` action should _update_ the existing task; not create a new one.
    - (done) Research: ActiveRecord's `update` method.
  - (done) Link to the `edit` action from the task's `show` page.
  - (done) DRY up your code by reusing the view code from the `new` functionality
    - (done) Research: Rendering _partials_ in Rails.

## Final Wave!
In this wave, we explore creating ActiveRecord associations by creating `belongs_to` and `has_many` relationships.

- (done) Create a model & migration for a new Person object.
  - (done) at a minimum, a Person should have a name
- (done) Create seed data to add at least three Person records to the database.
- (done) Each Task in your database can be assigned to a Person, indicating that Person is responsible for completing the Task.
  - (done) Express the relationship between Person and Task using `belongs_to` and `has_many`
  - (done) Update your Task `index` and `show` actions to include displaying the Person's name to which the Task belongs.
  - (done) Update your Task's `new` and `edit` actions to allow for selecting an _existing_ Person to which the Task should be associated.
- (done) Add a new people (the plural of Person) controller with the following routes and actions
  - (done) `index` action: Show a list of all people in the database.
    - (done) Link each Person's name to their `show` action.
    - (done) The index should include a count of how many _uncompleted_ tasks are assigned to each Person.
  - (done) `show` action: show all of the Person's information
- Create a custom route and action for showing a complete list of a Person's tasks, both complete and incomplete.
  - The url of this page should look something like `http://localhost:5000/people/1/tasks`.
  - Link to this action from a Person's `show` view.
- Deploy your completed app to Heroku.