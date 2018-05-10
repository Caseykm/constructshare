class RemoveOwnerIdFromTools < ActiveRecord::Migration[5.1]
  def change
    remove_column :tools, :owner_id, :integer
  end
end
