  class QuestsController < ApplicationController
  before_action :set_quest, only: [:show, :edit, :update, :destroy]
  before_action :require_logged_in
  # GET /quests
  # GET /quests.json
  def index
    
    quests_true = current_user.roles.select do |r|
      r.role == true
    end

    quests_false = current_user.roles.select do |r|
      r.role == false
    end

    @questmaster = quests_true.map {|q| q.quest}
    @participant = quests_false.map {|q| q.quest}
    @time = Time.now.utc
  end

  # GET /quests/1
  # GET /quests/1.json
  def show
      # @quest = current_user.quests.where(user_id: params[:id])
      @quest = Quest.find(params[:id])
      @tasks = @quest.tasks

      # This code pulls the Participants Names and shows them on the Quest View
      @quest_participants = Quest.find(params[:id]).roles.select do |r|
        r.role == false
      end
      @participants = @quest_participants.map {|u| u.user.name}
  end

  # GET /quests/new
  def new
    @quest = current_user.quests.new(:user_id => params[:user_id])
    @role = current_user.roles.new
  end

  # GET /quests/1/edit
  def edit
  end
  def showtime
    @quest = Quest.find(params[:format])
    @tasks = @quest.tasks
  end
  # POST /quests
  # POST /quests.json
  def create
    
    @quest = current_user.quests.new(quest_params)
    respond_to do |format|
      if @quest.save
        current_user.roles.create(quest_id: @quest.id, role: true)
        format.html { redirect_to @quest, notice: 'Quest was successfully created.' }
        format.json { render :show, status: :created, location: @quest }
      else
        puts "**** error messages: #{@quest.errors.full_messages}" 
        format.html { render :new }
        format.json { render json: @quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quests/1
  # PATCH/PUT /quests/1.json
  def update
    respond_to do |format|
      if @quest.update(quest_params)
        format.html { redirect_to @quest, notice: 'Quest was successfully updated.' }
        format.json { render :show, status: :ok, location: @quest }
      else
        format.html { render :edit }
        format.json { render json: @quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quests/1
  # DELETE /quests/1.json
  def destroy
    @quest.destroy
    respond_to do |format|
      format.html { redirect_to quests_url, notice: 'Quest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quest
      @quest = Quest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quest_params
      params.require(:quest).permit(:name, :description, :start, :invite_msg, :start_msg, :final_msg)
    end
end
