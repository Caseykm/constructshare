class AddImageToTools < ActiveRecord::Migration[5.1]
  def change
    add_column :tools, :image, :text
  end
end
