Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  
  resources :articles do
    resources :comments
  end
  # creates comments as a nested resource within articles
  
  root 'articles#index'
  
  resources :lists do
    member do
      patch :move
    end
  end

  resources :cards do
    member do
      patch :move
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
