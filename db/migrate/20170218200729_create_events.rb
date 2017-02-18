class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_city
      t.string :event_country
      t.string :event_location
      t.integer :event_total_cost
      t.string :event_url
      t.string :event_tracking_url
      t.integer :event_sponsorship_cost
      t.integer :event_physical_goods_cost
      t.integer :event_travel_cost
      t.integer :event_impact_score

      t.timestamps
    end
  end
end
