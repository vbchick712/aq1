class User < ApplicationRecord
  has_many :quests
  has_many :roles
  has_secure_password
end
