class CreateTools < ActiveRecord::Migration[5.1]
  def change
    create_table :tools do |t|
      t.string :description
      t.integer :day_price
      t.integer :week_price

      t.timestamps
    end
  end
end
