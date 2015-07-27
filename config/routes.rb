Rails.application.routes.draw do

  root 'display_tasks#index'

  # route to landing page that displays all tasks
  get '/tasks' => 'display_tasks#index'

  # route to page with form for entering new task
  get '/tasks/new' => 'display_tasks#new'

  # route to page with single task
  get '/tasks/:task_id' => 'display_tasks#show'


  # new task gets posted here
  post '/tasks' => 'display_tasks#create'

  # goes to the edit page with task info filled in
  get '/tasks/:task_id/edit' => 'display_tasks#edit'

  # updates single task
  patch '/tasks/:task_id' => 'display_tasks#update'

  post '/tasks/:task_id' => 'display_tasks#mark_complete'

  # delete single task
  delete '/tasks/:task_id' => 'display_tasks#destroy'

  get '/people' => 'people#index'

  get '/people/:person_id' => 'people#show'

  get '/people/:person_id/tasks' => 'people#tasks_for_person'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  # resources :products

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

  # root 'welcome#index'
  # get '/' => 'welcome#index'
  #
  # get 'products/:id' => 'catalog#view'

end
