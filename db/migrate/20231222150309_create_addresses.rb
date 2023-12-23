class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :phone
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :country
      t.string :pin
      t.references :customer, foreign_key: true
      t.timestamps
    end
  end
end
