class Task < ApplicationRecord
  belongs_to :quest, touch: true
end
