class SessionsController < ApplicationController
  helper_method :current_user, :logged_in?

   def new
   end

   def create
    if params[:name].present?
      session[:name] = params[:name]
      render :show
    else
      redirect_to login_path
    end
  end

   def destroy
    session.delete :name
    redirect_to login_path
  end

   def show
   end

   def logged_in?
    session[:name].present?
  end

   def current_user
    session[:name]
  end

end
