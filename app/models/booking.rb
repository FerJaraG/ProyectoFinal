class Booking < ApplicationRecord
  belongs_to :camping
  belongs_to :user
  belongs_to :campsite
  has_many :reviews, dependent: :destroy
  belongs_to :billing, optional: true
  enum status: [:pendiente, :pagar, :pagado]
  validates :check_in, :check_out, :adults_quantity, presence: true
  validates :adults_quantity, :kids_quantity, numericality: { only_integer: true }
  validates :price_per_day, :total_price, numericality: true

  def value_calc
    values = {}
    self.campsite.camping.plans.each do |plan|
      values[:adult] = plan.price if plan.season.months.include? self.check_in.month and plan.adult?
      values[:child] = plan.price if plan.season.months.include? self.check_in.month and plan.child?
    end
    if self.adults_quantity > 0
      values[:adult] *= self.adults_quantity
    elsif self.kids_quantity > 0 
      values[:child] *= self.kids_quantity
    end
    values
  end

end