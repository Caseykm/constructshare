class AddOwnerIdToTools < ActiveRecord::Migration[5.1]
  def change
    add_column :tools, :owner_id, :integer
  end
end
