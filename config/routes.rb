Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  resources :bands, only: [:index, :create, :new, :edit, :show, :update, :destroy]
  resources :albums, only: [:create, :new, :edit, :show, :update, :destroy]
  resources :tracks, only: [:new, :create, :edit, :show, :update, :destroy]

  resource :session, only: [:new, :create, :destroy]

  root to: redirect('/bands')
end
