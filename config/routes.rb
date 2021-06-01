Rails.application.routes.draw do
  root to: "gift#index"
  # root to: "contributor#index"

  resources :gift, only: [ :index, :show, :new, :create, :update, :edit ]
  resources :contributor, only: [ :index, :show, :new, :create, :edit ]
end
