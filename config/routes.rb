Rails.application.routes.draw do
  root 'carl_tasks#index'

  # GETs / regular links
  get "/about" => "carl_tasks#about" # about carl

  # GETs for SPECIFIC INDIVIDUAL tasks
  get "/task/:id" => "carl_tasks#task" # review a specific task
  get "/edit/:id" => "carl_tasks#edit" # edit a specific task
  get "/delete/:id" => "carl_tasks#delete"# delete a specific task


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
