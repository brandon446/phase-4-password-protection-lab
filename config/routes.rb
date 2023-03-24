Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  post '/login', to: 'session#create'
  post '/signup', to:'user#create'
  get '/me', to: 'user#show'
  delete '/logout', to: 'session#destroy'

end
