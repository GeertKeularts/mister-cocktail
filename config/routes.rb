Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
    resources :reviews, onyl: [:new, :create]
  end

  root 'cocktails#index'
end
