class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
  	@current_user ||=User.find_by(id: session[:user_id])
  end

#we need to add code to require log in on the correct pages

  def require_logged_in
  	return true if current_user

  	return redirect_to root_path

  end

# Adding an invite method here to prevent errors because I don't know where
# this method should go to manage the mailers for inviting participants

end
