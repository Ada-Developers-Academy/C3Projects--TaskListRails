Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'tasks#index'

  post "/task_:id/mark_complete"   => "tasks#mark_complete"
  post "/task_:id/mark_incomplete" =>      "task#mark_incomplete"

  get "/task_:id/details" => "tasks#show"

  get "/task/new"         => "tasks#new"
  post "/task/new"        => "tasks#create"

  delete "/task_:id"      => "tasks#delete"

  post "/completed_sort"  => "tasks#sort_completed"
  post "/name_sort"       => "tasks#sort_name"

  get "/task_:id/edit"    => "tasks#edit"
  patch "/task_:id/edit"  => "tasks#update"

  get "/people"           => "people#index"

  get "/assigned_to_:id"  => "people#show"



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
