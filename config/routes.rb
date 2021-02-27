Rails.application.routes.draw do
  resources :slogans
  root 'welcome#home'

  get 'home', to: 'welcome#home'

  get 'index', to: 'bikers#index'

  get 'picture', to: 'welcome#picture'

  get 'map', to: 'welcome#map'

  resources :bikers

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
