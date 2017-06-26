class User < ApplicationRecord
  has_many :quests, dependent: :destroy
  has_many :roles
  has_secure_password
end
