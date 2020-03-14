class AddAssignmentStatusToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :assigned_to, :integer
  end
end
