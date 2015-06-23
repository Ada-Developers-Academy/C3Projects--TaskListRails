Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # resources :task
  root 'task#index'

  get '/show/:id'                => 'task#show'
  get '/task/add_task'           => 'task#new'
  post '/tasks'                  => 'task#create'

  get '/delete/:id'              => 'task#delete'
  delete '/delete/:id'           => 'task#confirm_delete'

  get '/check/:id'               => 'task#update'
  post '/check/:id'              => 'task#update'
  patch '/'                      => 'task#update'

  get '/uncheck/:id'             => 'task#uncheck_update'
  post '/uncheck/:id'            => 'task#uncheck_update'
  patch '/'                      => 'task#uncheck_update'

  get '/edit_task/:id'           => 'task#edit'
  post '/edit_task/:id'          => 'task#edit'
  patch '/task/edit_update/:id'  => 'task#edit_update'


  # root 'people#index'
  get '/people/show'              => 'people#index'
  get '/people/show/:id'          => 'people#show'
  get '/people/show/:id/tasks'    => 'people#show_tasks'

  # get '/task/delete_confirmation/:id' => 'task#delete_confirm'
  # post '/tasks'           => 'task#create'
  # get 'products/:id' => 'catalog#view'

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
