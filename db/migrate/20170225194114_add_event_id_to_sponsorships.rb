class AddEventIdToSponsorships < ActiveRecord::Migration[5.0]
  def change
    add_column :sponsorships, :event_id, :integer
  end
end
