class Invite < ApplicationRecord
  belongs_to :quest
  belongs_to :sender, :class_name => 'User'
  belongs_to :recipient, :class_name => 'User'
  before_create :generate_token
  before_save :check_user_existence


  def generate_token
     self.token = Digest::SHA1.hexdigest([self.quest_id, Time.now, rand].join)
  end

  def create
   @invite = Invite.new(invite_params) # Make a new Invite
   @invite.sender_id = current_user.id # set the sender to the current user
    if @invite.save

        #if the user already exists
        if @invite.recipient != nil

          #send a notification email
          InviteMailer.existing_user_invite(@invite).deliver

          #Add the user to the user group
          @invite.recipient.quests.push(@invite.quest)

        else
            UserMailer.new_user_invite(@invite, new_session_path(:invite_token => @invite.token)).deliver #send the invite data to our mailer to deliver the email
          # InviteMailer.new_user_invite(@invite, new_user_registration_path(:invite_token => @invite.token)).deliver
        end
    else
      alert "something didn't work"
      # oh no, creating an new invitation failed
  end


  def check_user_existence
    recipient = User.find_by_email(email)
    if recipient
      self.recipient_id = recipient.id
   end
 end
end
