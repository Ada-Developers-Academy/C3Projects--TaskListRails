# Task List Rails

We are going to build the task list using our new rails knowledge. This project will enable us to keep track of and persist, add, edit and remove tasks.

## Baseline
Once you've achieved this baseline, take a walk around the room and see if you can answer questions or help other teams.

This project...

- will need to be isolated into a gemset called 'TaskListRails'
  - create the necessary files for RVM to recognize a gemset
- requires you to create a Rails 4.2.2 application
  - create and run a model and migration for a `Task` model
  - conform to Rails conventions on naming and inflection

## Wave 1
This wave is where we will introduce the view layer where we begin interacting with our application via the browser.

  - Use the provided seed data to create a script that will pre-populate your database with a given set of tasks.
    - Hint: research `rake db:seed`
  - Set up necessary controller(s) and route(s) that you will need in order to display a task from the database
  - Create a root route for your application that directs users to the list of tasks
    - The list of tasks should include the name of the task and an indicator of it is complete or not.
    - Each task name in the list should link to a `show` action that will render a new view for the user.
      - The `show` view should include the complete information about the task: name, description, completion status, and completion date.
  - All markup in all views should have semantic relevance.
  - Add some basic styles to your task list.

  ## Wave 2
In this wave we will add the first set of user interactivity and persistence.
  - Be able to create a new task:
    - The home page should contain a link to Add a new task. This will give the user a form to fill out with the appropriate task fields.
    - After the new task is added, the site should take the user back to the home page which displays the full list of tasks. The new task that was just added should be included in the full list of tasks.
  - Be able to delete an existing task:
    - Add a route and controller action whose responsibility is deleting a task (RESTful routes)
    - On the home page, add a button or link for each task that will, once clicked...
      1. Ask the user to confirm that they definitely want to delete the task.
      1. Delete the task from the database and redirect the user back to the list of remaining tasks
    
