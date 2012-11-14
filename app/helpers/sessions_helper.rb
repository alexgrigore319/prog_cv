module SessionsHelper
  def sign_in(user)
    cookies.permanent[:token] = user.token
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_token(cookies[:token])
  end
end
