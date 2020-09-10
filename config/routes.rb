Rails.application.routes.draw do
  root to: 'teachers#index'
  resources :teachers, only: [ :index, :show ] do
    resources :reviews, only: :create
  end
end
