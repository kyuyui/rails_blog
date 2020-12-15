Rails.application.routes.draw do
  root 'boards#index'

  resource :user, controller: 'registrations', only: [:creat, :edit, :update]do
    get '/sign_up', action: 'new'
  end

  #get '/users/sign_up', to: 'registrations#new', as: 'registration'
  #註冊
  
  post '/users/sign_up', to: 'registrations#create' 
	#建立資料

  get '/users/sign_in', to: 'sessions#new', as: 'session'
  #登入
  post '/login', to: 'sessions#create', as: 'login'

	delete '/logout', to: 'sessions#destroy', as: 'logout'
  #登出
  
  get "/users/edit", to: "registrarion#edit", as: 'edit_registration'
  put "/user/edit", to: "registration#update"

  get '/users', to: 'users#index'
  #轉回首頁

  resources :boards
end
