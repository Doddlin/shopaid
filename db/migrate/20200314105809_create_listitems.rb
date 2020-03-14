class CreateListitems < ActiveRecord::Migration[5.2]
  def change
    create_table :listitems do |t|
        t.belongs_to :list
        t.string :item_text
        t.string :item_count
      t.timestamps
    end
  end
end
