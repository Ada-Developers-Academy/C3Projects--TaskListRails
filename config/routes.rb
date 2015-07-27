Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'tasks#index'

  # Routes for new taks
  get 'tasks/new' => 'tasks#new'
  post '/tasks' => 'tasks#create'

  # Route for updating completed date
  patch 'tasks/:id/complete' => 'tasks#complete'

  # Routes for updating task information
  get 'tasks/:id/edit' => 'tasks#edit'
  patch 'tasks/:id'  => 'tasks#update'

  # Route for showing all tasks on home page
  get 'tasks/:id' => 'tasks#show'

  # Route for deleting task from db and home list
  delete 'tasks/:id' => 'tasks#destroy'


  # index route for displaying all people in the database
  get 'people' => 'people#index'

  # show all person's details
  get 'people/:id' => 'people#show'

  # show person's tasks
  get 'people/:id/tasks' => 'people#tasks'




  # post '/add_task' => 'tasks#add_task'



  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
