Rails.application.routes.draw do
  # get 'users/show'resources :usersと重複するため削除する。
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]

  resources :books

  
end

