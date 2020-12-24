Rails.application.routes.draw do
  root 'boards#index'

  # resource :users, controller: 'registrations', only: [:creat, :edit, :update] do
  #   get '/sign_up', action: 'new'
  # end

  get '/users/sign_up', to: 'registrations#new', as: 'registration'
  #註冊

  post '/users/sign_up', to: 'registrations#create' 
	#建立資料

  # resource :users, controller: 'sessions', only: [] do
  #   get '/sign_in', action: 'new'
  #   post '/login', action: 'create'
  #   delete '/logout', action: 'destroy'
  # end

  get '/users/sign_in', to: 'sessions#new', as: 'session'
  #登入
  post '/login', to: 'sessions#create', as: 'login'
	delete '/logout', to: 'sessions#destroy', as: 'logout'
  #登出

  resources :boards do 
    resources :post, shallow: true
  end

end
