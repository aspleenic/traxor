class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
      t.string :hotel_name
      t.decimal :hotel_cost_per_night
      t.decimal :hotel_cost_total
      t.decimal :airfare_cost_total
      t.decimal :other_expenses_total
      t.decimal :total_travel_cost

      t.timestamps
    end
  end
end
