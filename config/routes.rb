Rails.application.routes.draw do

  root to: 'cohorts#index'

  resources :cohorts do
    resources :phases, only: [:new, :create, :index]
    resources :students, only: [:new, :create, :index]
  end

  resource :phases, only: [:show, :edit, :delete, :update] do
    resources :weeks, only: [:new, :create, :index]
  end

  resources :weeks, only: [:show, :edit, :delete, :update] do
    resources :groups, only: [:new, :create, :index]
  end

  resources :students, only: [:show, :edit, :delete, :update] do
    resources :groups, only: [:index]
  end

  resource :groups, only: [:show, :edit, :delete, :update]

  devise_for :users

end
