Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users #, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :drinks, only: [:show, :index]
  root to: 'drinks#index'
  resources :reviews, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
