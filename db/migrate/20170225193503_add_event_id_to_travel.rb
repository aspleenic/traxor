class AddEventIdToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :event_id, :integer
  end
end
