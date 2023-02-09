Rails.application.routes.draw do
  get 'learner/new_learner'
  post 'learner/new_learner'

  get 'learner/show_learner'
  get 'admin/login'
  post 'admin/login'

  get 'admin/logout'
  resources :workers
  resources :companies
  get 'dashboard/welcome'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home/index"

  root 'home#index'

end





