class AddDonationsTable < ActiveRecord::Migration
  def up
  	create_table :donations do |t|
      t.integer  :year
      t.integer  :month
      t.integer  :day
      t.integer  :amount
      t.string   :destination
      t.string   :food_type
      t.string   :food_source

      t.timestamps
    end
  end

  def down
  	drop_table :donations
  end
end
