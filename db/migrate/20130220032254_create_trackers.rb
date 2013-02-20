class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.integer :user_id
      t.integer :bus_id
      t.integer :track
      t.boolean :active

      t.timestamps
    end
  end
end
