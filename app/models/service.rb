class Service < ApplicationRecord
	has_and_belongs_to_many :campings, dependent: :destroy
	has_many :plans
	validates :name, presence: true
end
