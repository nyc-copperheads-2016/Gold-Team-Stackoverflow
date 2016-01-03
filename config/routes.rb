Rails.application.routes.draw do
  root 'questions#index'
  resources :questions do
    resources :answers, except: [:index, :show]
  end
  resources :sessions, only: [:create, :destroy, :new]

  resources :users, only: [:new, :create, :show]
end
