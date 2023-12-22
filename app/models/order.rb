class Order < ApplicationRecord
  belongs_to :customer
  has_many :products
  belongs_to :billing_address, class_name: 'Address'
  belongs_to :shipping_address, class_name: 'Address'
end
