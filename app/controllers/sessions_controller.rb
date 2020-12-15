class SessionsController < ApplicationController

    def new
      @user = User.new
    end

    def create
        user = User.login(params[:user])
        if user
          session[:user1213] = user.id
          redirect_to root_path, notice: '登入成功'
        else
          redirect_to session_path, notice: '登入失敗'
        end
    end

    def destroy
      session[:user1213] = nil
      #讓這張票變成空的
      redirect_to root_path, notice: '已登出'
    end
end