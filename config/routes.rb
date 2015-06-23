Rails.application.routes.draw do

  # paths to support displaying tasks in forward and backward chronological order
  # DEFAULT: oldest tasks first (!W make the duplicants into redirects)
  root 'carl_tasks#index'
  # get "/oldest" => "carl_tasks#oldest"
  # get "/forward" => "carl_tasks#forward"
  # # but some people want to go the other way
  # get "/backward" => "carl_tasks#backward"
  # get "/reverse" => "carl_tasks#reverse"
  # get "/newest" => "carl_tasks#newest"

  # GETs / regular links
  get "/about" => "carl_tasks#about" # about carl

  # GETs for SPECIFIC INDIVIDUAL tasks
  get "/show/:id" => "carl_tasks#show" # review a specific task
  get "/edit/:id" => "carl_tasks#edit" # edit a specific task
  get "/delete/:id" => "carl_tasks#delete"# delete a specific task

  # GETs for SPECIFIC INDIVIDUAL people
  get "/people" => "carl_people#people" # review all the people ALL OF THEM
  get "/people/:id" => "carl_people#show" # review a specific person
  get "/people/:id/tasks" => "carl_people#tasks" # review a specific person's tasks

  # GET a new task
  get "/create" => "carl_tasks#create"


  # POST the new task
  post "/created" => "carl_tasks#created"


  # PATCHes to update tasks that already exist
  patch "/complete/:id" => "carl_tasks#complete"
  patch "/edited/:id" => "carl_tasks#edited"


  # DELETE to delete a task forever
  delete "/deleted/:id" => "carl_tasks#deleted"


  # GETs additional 404 handling
  get "/:anything_else" => "carl_tasks#four_oh_four"
  get "/:anything_else/:even_more_anything_else" => "carl_tasks#four_oh_four"
end
