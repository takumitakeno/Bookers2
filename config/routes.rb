Rails.application.routes.draw do
  get 'tops/top'
  get 'tops/about'
  # get 'users/show'resources :usersと重複するため削除する。
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  resources :books

  root'tops#top'

  post 'users' => 'users/#show'

end

