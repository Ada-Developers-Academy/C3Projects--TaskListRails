Rails.application.routes.draw do
  # See how all your routes lay out with "rake routes".

  root 'tasks#index'   # NOTE TO SELF: see 'tasks_controller.rb' for method 'index'
  get '/tasks' => 'tasks#index'

  get '/tasks/new' => 'tasks#new'
  post '/tasks' => 'tasks#create'

  # NOTE: I had to move this down so it wouldn't think "new" was the :id.
  # Is there another way to do this, or ordering the operations a good way to manage loading priority?
  get '/tasks/delete/:id' => 'tasks#show_before_delete'
  get '/tasks/:id' => 'tasks#show'
  delete '/tasks/:id' => 'tasks#destroy'

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
