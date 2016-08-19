Rails.application.routes.draw do
  root to: 'staticpage#home'

  resources :shops do
    resources :cars
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
