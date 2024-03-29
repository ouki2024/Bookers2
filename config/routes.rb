Rails.application.routes.draw do
    
    devise_for :users
    root to: "homes#about"
    get 'homes/about' => 'homes#about', as: "about"
    
    get 'top' => 'homes#top'
 
    resources :users, only: [:new, :index, :show]
    
    resources :books, only: [:new, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
