Rails.application.routes.draw do
  resources :people
  root 'tasks#index'

  resources :tasks
    # HTTPverb, Path, Controller#Action, Used for
      # GET /tasks tasks#index  display a list of all tasks
      # GET /tasks/new tasks#new  return an HTML form for creating a new task
      # POST /tasks tasks#create create a new task
      # GET /tasks/:id tasks#show display a specific task
      # GET /tasks/:id/edit  tasks#edit return an HTML form for editing a task
      # PATCH/PUT /tasks/:id tasks#update update a specific task
      # DELETE  /tasks/:id tasks#destroy  delete a specific task
end
