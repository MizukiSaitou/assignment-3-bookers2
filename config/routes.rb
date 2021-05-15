Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about'
  resources :books, only:[:new, :create, :index, :edit, :show, :destroy] do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

 resources :users, only: [:new, :create, :index, :show]
 end
