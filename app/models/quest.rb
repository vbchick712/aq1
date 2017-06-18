class Quest < ApplicationRecord
  has_many :tasks
  belongs_to :user
  has_many :roles
end
