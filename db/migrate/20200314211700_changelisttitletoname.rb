class Changelisttitletoname < ActiveRecord::Migration[5.2]
  def change
    rename_column :lists, :list_title, :name
  end
end
