Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  get '/homes/about' => 'homes#about', as: 'about'
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :show, :edit, :create, :destroy]
end
