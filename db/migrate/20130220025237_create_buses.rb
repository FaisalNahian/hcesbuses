class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :name
      t.string :twitter_regex
      t.integer :last_tweet, :default => 0

      t.timestamps
    end
  end
end
