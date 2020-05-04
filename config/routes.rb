Rails.application.routes.draw do
  
  root 'home#top'
  get 'home/about'
  devise_for :users
  resources :users
  
  resources :books do
   resource :book_comments, only:[:create, :destroy]
   resource :favorites, only: [:create, :destroy]
  end
  
end