class AddEventIdToPhysicalGoods < ActiveRecord::Migration[5.0]
  def change
    add_column :physical_goods, :event_id, :integer
  end
end
