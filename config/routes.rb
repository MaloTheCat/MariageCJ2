Rails.application.routes.draw do
  root to: "gift#index"
  resources :gift, only: [ :index, :show, :new, :create, :update, :edit ]
end
