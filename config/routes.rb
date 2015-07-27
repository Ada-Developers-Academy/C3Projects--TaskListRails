Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'tasks#index'
  # Example of regular route:
  get 'tasks/show/:id' => 'tasks#show'

  get 'confirm_delete/:id' => 'tasks#confirm_deletion'
  delete 'delete/:id' => 'tasks#destroy'

  # routes for the check/uncheck boxes on the home page
  get 'tasks/complete/:id' => 'tasks#complete'
  patch 'tasks/complete/:id' => 'tasks#complete'

  get 'tasks/uncomplete/:id' => 'tasks#uncomplete'
  patch 'tasks/uncomplete/:id' => 'tasks#uncomplete'

  # routes for the edit page off the show details page
  get  'tasks/show/tasks/edit/:id' => 'tasks#edit'
  patch '/tasks/update/:id' => 'tasks#update'

  # Was able to change the button_to method to get and not need a post #new method :D
  # not sure the post method is RESTful, but it's what made the partial shared form work
  get '/new_task' => 'tasks#new'
  post '/tasks/add' => 'tasks#create'
  # get '/new' => 'tasks#new'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get 'people' => 'people#index'
  get 'people/show/:id' => 'people#show'

  get 'people/:id/tasks' => 'people#tasks'
  # Example resource route (maps HTTP verbs to controller actions automatically):
    # resources :show

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
