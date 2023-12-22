class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :sku
      t.decimal :mrp
      t.integer :quantity
      t.decimal :discount
      t.decimal :net_price
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
