class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_action :require_logged_in
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def invite
    # if user is not in the User table, then create a user and role with the quest_id
    @user = User.find_by(email: params[:email])
      unless @user
        @user = User.new(email: params[:email]) #add code to set a default password and include it in the email going out
        @role = Role.create(quest_id: (params[:quest_id]), user_id: (params[:user_id]))
      else
        # the user is in the User table already, just add them to the role table for that quest
        @role = Role.create(quest_id: (params[:quest_id]), user_id: (params[:user_id]))
      end
      # send everyone the invite_email for the quest they were invited to and notify the user it all worked
      UserMailer.invite_email(@user).deliver_now
      redirect_back(fallback_location: root_path)
      # format.html { redirect_to quests_path, notice: 'Participant was invited'}
    end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
