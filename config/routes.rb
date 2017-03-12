Rails.application.routes.draw do
  get 'services/new'

  get 'services/show'

  get 'services/index'

  get 'users/new'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  
  resources :users
  resources :services
end
