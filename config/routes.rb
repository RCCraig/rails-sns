Rails.application.routes.draw do
  resources :products
  root to: 'pages#front'
end
