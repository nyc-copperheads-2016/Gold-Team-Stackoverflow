Rails.application.routes.draw do
  root 'questions#index'
  resources :questions do
   resources :answers, except: [:index]
  end
  resources :sessions, only: [:create, :destroy, :new]
end
