Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, only: [:index, :new, :create, :show] do
    collection do
      get 'search'
    end
  end
  
  resources :genres, only: [:index, :show]

  resources :tags, only: [:show]
  
end
