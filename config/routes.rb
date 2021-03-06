Rails.application.routes.draw do

  get 'profiles/create'

  #welcome page
  root 'users#index'

  get '/welcome' => 'users#index'

  get '/users/:id/profile' => 'users#show'

  #signup
  get '/signup' => 'users#new'

  post '/signup' => 'users#create'

  get '/user/:id' => 'users#show'



  #login
  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  get '/profiles' => 'profiles#index'

  get '/profile' => 'profiles#show'

  post '/profiles' => 'profiles#create'



  # gigs

  get '/gigs' => 'gigs#index'

  get '/gigs/new' => 'gigs#new'

  post '/gigs' => 'gigs#create'

  get '/gigs/:id' => 'gigs#show', as: :gig

  delete '/gigs/:id' => 'gigs#destroy'

  get '/gigs/:id/edit' => 'gigs#edit'

  patch 'gigs/:id' => 'gigs#update'


  # logout
  delete '/logout' => 'sessions#destroy'

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
