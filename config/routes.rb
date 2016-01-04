Rails.application.routes.draw do
  root 'questions#index'

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:create, :destroy, :new]

  resources :questions do
    resources :answers, except: [:index, :show]
    resources :votes, only: [:create]
    resources :comments, except: [:show,:index]
  end

  resources :answers, except: [:index, :show] do
    resources :votes, only: [:create]
    resources :comments
  end
end
