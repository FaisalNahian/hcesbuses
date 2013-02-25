class AddMissingIndexes < ActiveRecord::Migration
  def change
    add_index :mobile_phones, :user_id
    add_index :trackers, :bus_id
    add_index :trackers, :user_id
  end
end
