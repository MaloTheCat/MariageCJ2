Rails.application.routes.draw do
  root to: "gifts#index"
  resources :gifts
end
