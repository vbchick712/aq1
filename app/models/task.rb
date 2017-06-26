class Task < ApplicationRecord
  belongs_to :quest, touch: true, counter_cache: true
end
