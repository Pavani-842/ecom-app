class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.date :date_of_order
      t.string :order_status
      t.references :customer, null: false, foreign_key: true
      t.references :billing_address, null: false, foreign_key: true
      t.references :shipping_address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
