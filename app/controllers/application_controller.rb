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
      flash[:alert] = "You must sign in to view this page."
      redirect_to '/signin'
    end
  end

  def authorize_admin

  end

end
