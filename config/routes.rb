Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos, only: [:new, :create] do
    resources :completions, only: [:create, :destroy]
  end

  resources :session, only: [:new, :create]
end
