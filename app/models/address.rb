class Address < ApplicationRecord
  belongs_to :customer
  has_many :orders_billing, class_name: 'Order', foreign_key: 'billing_address_id'
  has_many :orders_shipping, class_name: 'Order', foreign_key: 'shipping_address_id'
end
