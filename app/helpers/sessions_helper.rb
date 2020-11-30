module SessionsHelper
    def current_user
      if session[:user1213].present?
        @user ||= User.find_by(email: session[:user1213])
      else
        nil
      end
    end

    def user_signed_in?
      if current_user
        return true
      else
        return false
      end
    end
end