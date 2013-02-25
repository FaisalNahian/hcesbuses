class ChangeLastTweetToBigint < ActiveRecord::Migration
  def up
    change_column :buses, :last_tweet, 'bigint unsigned'
  end

  def down
    change_column :buses, :last_tweet, 'integer'
  end
end
