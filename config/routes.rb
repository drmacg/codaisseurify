Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'artists#index'
  resources :artists, only: [:index, :show, :destroy] do
    resources :songs, only: [:create, :destroy]
  end
  namespace :api do
    resources :artists do
      resources :songs, only: [:index, :show, :create, :destroy]
    end
  end
end
