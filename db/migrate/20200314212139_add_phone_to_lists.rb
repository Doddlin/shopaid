class AddPhoneToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :phone, :string
  end
end
