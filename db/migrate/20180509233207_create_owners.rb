class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.string :surname
      t.string :first_name
      t.string :address
      t.string :suburb
      t.integer :postcode
      t.string :account_name
      t.integer :account_number
      t.integer :bsb

      t.timestamps
    end
  end
end
