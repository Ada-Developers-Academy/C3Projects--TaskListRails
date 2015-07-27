Rails.application.routes.draw do
  # See how all your routes lay out with "rake routes".

  root 'tasks#index'
    # NOTE TO SELF: same as "get '/' => 'tasks#index'"
    # NOTE TO SELF: see 'tasks_controller.rb' for method 'index'
  get '/tasks' => 'tasks#index'

  get '/people' => 'people#index'
  get '/people/index' => 'people#index'
  get '/people/:id' => 'people#show'
  get '/people/:id/tasks' => 'people#all_tasks'

  get '/tasks/new' => 'tasks#new'
  post '/tasks' => 'tasks#create'
  patch '/:id' => 'tasks#completed_status'

  get '/tasks/delete/delete_all' => 'tasks#destroy_all'
  delete '/tasks/delete/delete_all' => 'tasks#destroy_all_completed'

  get '/tasks/delete/:id' => 'tasks#show_before_delete'

  get '/tasks/:id' => 'tasks#show'
  patch '/tasks/:id/edit' => 'tasks#update'
  delete '/tasks/:id' => 'tasks#destroy'

  get '/tasks/:id/edit' => 'tasks#edit'


  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
