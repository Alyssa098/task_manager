class ApplicationController < ActionController::Base
  protect_from_forgery
  
<<<<<<< HEAD
  before_filter :authorize
=======
  skip_before_filter :authorize, :only => [:new, :create]
>>>>>>> 851116494c5648c791388bb56c0f37d5a5ab29d3
  
  def authorize
    if current_user.nil?
      redirect_to logins_path, :alert => "You need to log in first!"
    end
  end
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
  #this allows the current_user method to be available in all the views
  helper_method :current_user
  
end

