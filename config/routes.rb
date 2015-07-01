Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'tasks#index'

  get '/tasks/confirm/:id' => 'tasks#confirm'
  get '/tasks/destroy/:id' => 'tasks#destroy'

  patch '/tasks/completed/:id' => 'tasks#completed'
  patch '/tasks/not_completed/:id' => 'tasks#not_completed'

  get '/tasks/new' => 'tasks#new'
  post '/tasks' => 'tasks#create'

  get '/tasks/:id' => 'tasks#show'

  get '/tasks/:id/edit' => 'tasks#edit'
  patch '/tasks/:id' => 'tasks#update'

  get '/people' => 'people#index'
  get 'people/:id' => 'people#show'


  # get '/' => 'task_lists#index'
  # Example of regular route:
    # get 'products/:id' => 'catalog#view'
    ### /products/1 would get matched #first route it matches it takes starting at the top. exact match = must
    # / products wouold not
    # in this view action, expect params[:id] to exist which gets passed in through the root
    # get '/new' => 'task_lists#new'.. Better Errors example
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
