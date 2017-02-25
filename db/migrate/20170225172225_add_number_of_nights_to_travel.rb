class AddNumberOfNightsToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :hotel_number_of_nights, :integer
  end
end
