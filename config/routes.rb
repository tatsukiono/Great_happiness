Rails.application.routes.draw do
  devise_for :users
  # get 'groups/index'
  root 'themes#index'
  resources :themes, only: [:new, :create, :show] do
    resources :comments, only: :create
  end

end
