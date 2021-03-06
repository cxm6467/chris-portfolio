Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'static_pages#index'
    get 'about', to: 'static_pages#about'
    get 'resume', to: 'static_pages#resume'
    get 'social_media', to: 'static_pages#social_media'
    resources :projects, only: [:new, :create, :index]
    resources :users, only: [:show]
end
