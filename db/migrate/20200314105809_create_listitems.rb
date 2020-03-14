class CreateListitems < ActiveRecord::Migration[5.2]
  def change
    create_table :listitems do |t|

      t.timestamps
    end
  end
end
