Rails.application.routes.draw do
  root 'people#index'

  get '/tasks' => 'tasks#all_tasks'

  resources :people do
    resources :tasks, only: [:index, :new, :create, :update]
  end
  resources :tasks, only: [:show, :edit, :destroy]

  # # NOTE: this does not work because :create needs to be a nested action in order for the edit form to submit correctly.
  # resources :people do
  #   resources :tasks, shallow: true
  # end

end
