Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books, only:[:create, :index, :edit, :show, :update, :destroy] do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

 resources :users, only: [:edit, :update, :index, :show]
 end


