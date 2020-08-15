Rails.application.routes.draw do
  devise_for :users
  # get 'groups/index'
  root 'themes#index'
  resources :themes, only: [:new, :create, :show] do
    collection do
      match 'search' => 'themes#search', via: [:get, :post]
    end
    resources :comments, only: [:new, :create] do
      resources :likes, only: [:create, :destroy]
    end
  end
  resources :groups, only: [:index, :new, :create, :show, :edit, :update] do
    resources :messages, only: [:index, :create]
  end

  resources :users, only: :index do
    collection do
      get :likes
    end
  end

end
