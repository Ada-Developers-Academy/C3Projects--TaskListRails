## Wave 2
In this wave we will add the first set of user interactivity and persistence.
  - Be able to create a new task:
    - (done) The home page should contain a link to Add a new task.
    - (done) form to fill out with the appropriate task fields.
    - After the new task is added, the site should take the user back to the home page which displays the full list of tasks. 
    - The new task that was just added should be included in the full list of tasks.

  - Be able to delete an existing task:
    - Add a route and controller action whose responsibility is deleting a task (RESTful routes)
    - On the home page, add a button or link for each task that will, once clicked...
      1. Ask the user to confirm that they definitely want to delete the task.
      1. Delete the task from the database and redirect the user back to the list of remaining tasks