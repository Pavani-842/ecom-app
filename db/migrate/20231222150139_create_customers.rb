class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
