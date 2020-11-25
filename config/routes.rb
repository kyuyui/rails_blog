Rails.application.routes.draw do
  root 'boards#index'
  #首頁
  
  resources :boards
end
