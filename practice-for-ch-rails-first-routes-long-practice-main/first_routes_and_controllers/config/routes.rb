Rails.application.routes.draw do
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'users/:id', to: 'users#show', as: 'user'
  resources :users, only: [:create, :index, :destroy, :show, :update]

  resources :artworks, only: [:create, :destroy, :show, :update]

  resources :artwork_shares, only: [:create, :destroy]

  resources :users, except:[:create, :destroy, :show, :update] do
    resources :artworks, only: [:index]
    resources :comments, only: [:index]
  end

  resources :comments, only: [:create, :destroy]

  resources :artworks, except: [:create, :destroy, :show, :update] do 
    resources :comments, only: [:index]
  end
end
