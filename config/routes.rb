Rails.application.routes.draw do
  root 'questions#index'

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:create, :destroy, :new]

  resources :questions do
    resources :answers, except: [:index, :show]
    resources :votes, only: [:create]
    resources :comments
  end

  resources :answers, except: [:index, :show] do
    resources :votes, only: [:create]
    resources :comments
  end

  resources :questions do
    resources :answers, except: [:index, :show]
    resources :comment, except: [:index,:show,:edit]
  end
end
