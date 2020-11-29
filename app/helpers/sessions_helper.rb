module SessionsHelper
    def current_user
      if session[:user1213].present?
        @user ||= User.find_by(email: session[:user1213])
      else
        nil
      end
    end
end