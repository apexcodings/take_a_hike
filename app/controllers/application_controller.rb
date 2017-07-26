class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def authorize_user
    if !current_user
      redirect_to '/signin', notice: 'You must sign in to view that page.'
    end
  end

  def authorize_admin
    if !(current_user && current_user.admin)
      redirect_to '/signin', notice: 'You must be an administrator to access that page.'
    end
  end

end
