class Booking < ApplicationRecord
  belongs_to :camping
  belongs_to :user
  belongs_to :campsite
  has_many :reviews, dependent: :destroy
  belongs_to :billing, optional: true
  enum status: [:pendiente, :pagar, :pagado]
  # validate :booking_period_not_overlapped

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

    # def period_overlapped?
    #   unless Booking.where(
    #     '(check_in <= ? AND check_out >= ?) OR (check_in >= ? AND check_out <= ?)',
    #     check_in, check_out,
    #     check_in, check_out
    #   ).empty?
    #    false
    #   end
    # end
end