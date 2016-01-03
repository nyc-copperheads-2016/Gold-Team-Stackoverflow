Rails.application.routes.draw do
  root 'questions#index'

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:create, :destroy, :new]

  resources :questions do
    resources :answers, except: [:index, :show]
    resources :votes, except: [:index, :new, :show, :edit]
  end
end
