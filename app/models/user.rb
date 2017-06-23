class User < ApplicationRecord
  has_many :quests
  has_many :roles
  has_many :invitations, :class_name => 'Invite', :foreign_key => 'recipient_id'
  has_many :sent_invites, :class_name => 'Invite', :foreign_key => 'sender_id'
  has_secure_password
end
