module SessionsHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_user?
    session[:user_id].nil? ? false : true
  end

  def current_user?(user)
    user == User.find_by(id: session[:user_id])
  end
end
