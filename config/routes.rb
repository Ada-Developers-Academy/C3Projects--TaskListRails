Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'task#index'
  get '/' => 'task#index'
  # lines 6 and 7 do the exact same thing
  get '/new' => 'task#new'
  post '/tasks' => 'task#create'

  get '/tasks/update/:id' => 'task#edit'

  get '/tasks/:id' => 'task#show', as: :task
  post '/tasks/:id' => 'task#update'
  put '/tasks/:id' => 'task#update'
  patch '/tasks/:id' => 'task#update'
  delete '/tasks/:id' => 'task#delete'

  get '/tasks/complete/:id' => 'task#complete'
  patch '/tasks/complete/:id' => 'task#complete'


  get '/tasks/incomplete/:id' => 'task#incomplete'
  patch '/tasks/incomplete/:id' => 'task#incomplete'

  get '/people/:id/tasks' => 'people#index'




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
