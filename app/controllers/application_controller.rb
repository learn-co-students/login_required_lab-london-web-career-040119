class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def homepage
    redirect_to login_path unless session[:name]
  end

  def current_user
    session[:name]
  end

  private

  def require_login
    return head(:forbidden) unless current_user
  end

end
