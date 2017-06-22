class Quest < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user
  has_many :roles, dependent: :destroy
end
