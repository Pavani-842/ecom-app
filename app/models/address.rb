# app/models/address.rb

class Address < ApplicationRecord
  belongs_to :customer, optional: true

  validates :address_line_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :pin, presence: true
end
