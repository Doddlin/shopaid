class AddListTitletoLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :list_title, :string
  end
end
