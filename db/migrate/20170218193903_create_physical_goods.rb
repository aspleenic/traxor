class CreatePhysicalGoods < ActiveRecord::Migration[5.0]
  def change
    create_table :physical_goods do |t|
      t.integer :tshirt_count
      t.decimal :tshirt_cost
      t.integer :tshirts_distributed
      t.decimal :stickers_cost
      t.string :other_goods
      t.decimal :other_goods_cost

      t.timestamps
    end
  end
end
