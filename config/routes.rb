Rails.application.routes.draw do
  root 'boards#index'

  get '/users/sign_in', to: 'sessions#new'
  #登入
	delete '/users/sign_out', to: 'sessions#destroy'
	#登出
  get '/users/sign_up', to: 'registrations#new'
  #註冊
  post '/users/sign_up', to: 'registrations#create'
	#建立資料
  get '/users', to: 'users#index'
	#轉回首頁

  resources :boards
end
