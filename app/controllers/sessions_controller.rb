class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(name: params[:name]).try(:authenticate, params[:password])
  	 return render action: 'new' unless @user

  	 session[:user_id] = @user.id
  	 redirect_to quests_path
  	end

# Shannan Comment: we need this to logout
  # def destroy
  # end

end
