Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"

  # get 'hello_world', controller: 'application', action: 'hello_world'
  # post '/short', controller: 'application', action: 'shorten'
  # get '/:code', controller: 'application', action: 'get_url'

  # post '/movies', controller: 'movies', action: 'create'
  # get '/movies/:id', controller: 'movies', action: 'show'
  # get '/movies', controller: 'movies', action: 'index'
  # put '/movies/:id', controller: 'movies', action: 'update'
  # delete '/movies/:id', controller: 'movies', action: 'destroy'

  resources :movies

  resources :studios

  resources :actors

end
