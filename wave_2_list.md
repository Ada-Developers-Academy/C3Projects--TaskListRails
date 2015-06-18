# Be able to create a new task
- Home page should contain a link to add a new task
 - make link on home page (erb)
 - route to new task page (routes.rb)
 - make a new task page (erb)
 - create form for a new task (erb)
 - task needs to be written to the db (controller)
 - once submitted, site returns to homepage(route)
  - create a posts that returns to homepage (route)

# Be able to delete an existing task
- Add a route and controller action to delete a task (RESTful route)
- add a link/button for each task that:
  - asks the user to confirm that they definitely want to delete the task (new page?)
  - deletes the task from the database and returns to the homepage (controller/route)
