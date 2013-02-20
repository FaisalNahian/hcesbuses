class CreateMobilePhones < ActiveRecord::Migration
  def change
    create_table :mobile_phones do |t|
      t.integer :user_id
      t.string :carrier
      t.string :number

      t.timestamps
    end
  end
end
