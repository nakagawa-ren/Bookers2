Rails.application.routes.draw do
  get 'users/show'
  root to:'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
    resources :books, only: [:create, :index, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users,only: [:show,:index,:edit,:update]
end
