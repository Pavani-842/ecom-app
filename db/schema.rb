# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_23_152449) do
  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "pin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id", null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_number"
    t.date "date_of_order"
    t.string "order_status"
    t.integer "customer_id", null: false
    t.integer "billing_address_id", null: false
    t.integer "shipping_address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["billing_address_id"], name: "index_orders_on_billing_address_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["shipping_address_id"], name: "index_orders_on_shipping_address_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "sku"
    t.decimal "mrp"
    t.integer "quantity"
    t.decimal "discount"
    t.decimal "net_price"
    t.integer "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_products_on_order_id"
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "orders", "billing_addresses"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "shipping_addresses"
  add_foreign_key "products", "orders"
end
