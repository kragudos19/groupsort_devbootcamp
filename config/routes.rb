Rails.application.routes.draw do


  resources :students, only: [:show, :new, :create, :edit, :delete ]
  resources :weeks, only: [:show, :new, :create, :edit, :delete ]


  root to: 'cohorts#index'
  resources :phases
  resources :cohorts

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
