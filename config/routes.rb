Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'task#index'

  post "/task_:id/mark_complete"   => "task#mark_complete"
  post "/task_:id/mark_incomplete" =>      "task#mark_incomplete"

  get "/task_:id/details"         => "task#show"

  get "/task/new"         => "task#new"
  post "/task/new"        => "task#create"

  delete "/task_:id"      => "task#delete"

  post "/completed_sort"  => "task#sort_completed"
  post "/name_sort"       => "task#sort_name"

  get "/task_:id/edit"    => "task#edit"
  patch "/task_:id/edit"   => "task#update"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  # /products/1 would get matched
  # /products would not

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
