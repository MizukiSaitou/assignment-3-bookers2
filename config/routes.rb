Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books, only:[:create, :index, :edit, :show, :update, :destroy] do
   resource :favorites, only:[:create, :destroy]
   resources :book_comments, only:[:create, :destroy]
end

 resources :users, only: [:edit, :update, :index, :show] do
  resource :relationships, only:[:create, :destroy]
   get 'followings' => 'relationships#followings', as: 'followings'
   get 'followers' => 'relationships#followers', as: 'followers'
 end

 get '/search' => 'search#search'

 end


