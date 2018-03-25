class Plan < ApplicationRecord
  belongs_to :season
  belongs_to :camping
  enum person_type: [:niño, :adulto]
end
