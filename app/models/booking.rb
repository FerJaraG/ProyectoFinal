class Booking < ApplicationRecord
  belongs_to :camping
  belongs_to :user
  belongs_to :campsite
  has_one :review
  has_many :transactions
  enum status: [:pendiente, :pagado]

  def value_calc
    values = {}
    self.campsite.camping.plans.each do |plan|
      values[:adult] = plan.price if plan.season.months.include? self.check_in.month and plan.adult?
      values[:child] = plan.price if plan.season.months.include? self.check_in.month and plan.child?
    end
    values[:adult] *= self.adults_quantity 
    values[:child] *= self.kids_quantity
    values
  end
end