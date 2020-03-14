class AddUserDetailsToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :country, :string
    add_column :lists, :town, :string
    add_column :lists, :postcode, :string
  end
end
