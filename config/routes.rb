Rails.application.routes.draw do
    
    devise_for :users
    root to: 'homes#top'
    get 'homes/about' => 'homes#about', as: "about"
    
    get 'top' => 'homes#top'
 
    resources :users, only: [:new, :index, :show]
    
    get 'users/index'
    
    resources :books, only: [:new, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
