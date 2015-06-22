Rails.application.routes.draw do
  root 'display_task#index'
  post '/' => 'display_task#index'

  # to show an individual task
  get '/show/:id' => 'display_task#links'

  # to add a task
  post '/tasks/new' => 'add_task#new'
  post '/tasks'     => 'add_task#create'

  # to delete a task
  delete '/tasks/delete/:id' => 'delete_task#destroy'

  # to mark a task as complete
  patch '/tasks/complete/:id' => 'update_task#completed'

  # to edit a task
  post '/tasks/edit/:id'  => 'update_task#edit'
  patch '/tasks/edit/:id' => 'update_task#update'

  # post '/:id' => 'display_task#links'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
