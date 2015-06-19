Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'carl_tasks#index'

  get "/about" => "carl_tasks#about"

  get "/task/:id" => "carl_tasks#task"
  get "/task" => "carl_tasks#task"

  get "/create" => "carl_tasks#create"
  post "/created" => "carl_tasks#created"

  get "/complete/:id" => "carl_tasks#complete"
  get "/complete" => "carl_tasks#complete"
  # post "/complete" => "carl_tasks#post_complete"

  get "/edit/:id" => "carl_tasks#create"
  get "/edit" => "carl_tasks#create"
  # post "/edit" => "carl_tasks#post_create"

  get "/delete/:id" => "carl_tasks#delete"
  get "/delete" => "carl_tasks#delete"
  delete "/deleted/:id" => "carl_tasks#deleted"


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
