Rails.application.routes.draw do


  get 'student_groups/index'

  get 'student_groups/show'

  get 'student_groups/edit'

  get 'groups/index'

  get 'groups/show'

  get 'groups/edit'

  resources :students, only: [:show, :new, :create, :edit, :delete ]
  resources :weeks, only: [:show, :new, :create, :edit, :delete ]


  root to: 'cohorts#index'
  resources :phases
  resources :cohorts

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
