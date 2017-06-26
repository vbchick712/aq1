class SessionsController < ApplicationController

  def new
  end


  def create
  	@user = User.find_by(name: params[:name]).try(:authenticate, params[:password])
  	 return render action: 'new' unless @user

  	 session[:user_id] = @user.id
  	 redirect_to quests_path(@user)
  	end

    def destroy
    session[:user_id] = nil
    redirect_to '/'
    end


  end
