class CreateSponsorships < ActiveRecord::Migration[5.0]
  def change
    create_table :sponsorships do |t|
      t.decimal :direct_cost
      t.string :level_label

      t.timestamps
    end
  end
end
