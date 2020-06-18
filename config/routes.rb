Rails.application.routes.draw do
  get '/secret_page', to: 'secrets#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  get '/', to: 'sessions#new', as: 'root'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
