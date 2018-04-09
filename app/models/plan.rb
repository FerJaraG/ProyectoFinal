class Plan < ApplicationRecord
  belongs_to :season
  belongs_to :camping
  enum person_type: [:child, :adult]
  validates :season_id, :camping_id, :price, :person_type, presence: true
  validates :price, numericality: { only_integer: true }
end
