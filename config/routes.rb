Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]

  get '/guests/:id', to: 'guests#show', as: 'guest'
  
  get '/episodes/:id', to: 'episodes#show', as: 'episode'

  get '/appearances/new', to: 'appearances#new', as: 'new_appearance'
  post '/appearances', to: 'appearances#create'
end
