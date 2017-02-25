class Travel < ApplicationRecord

  validates :hotel_number_of_nights, :presence => true

  def hotel_cost_total
    @hotel_cost_total = self.hotel_number_of_nights * self.hotel_cost_per_night
  end

  def total_travel_cost
    @total_travel_cost = self.hotel_cost_total + self.airfare_cost_total + self.other_expenses_total
  end

end
