class AddLabelToMobilePhones < ActiveRecord::Migration
  def change
    add_column :mobile_phones, :label, :string
  end
end
