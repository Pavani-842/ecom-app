class Customer < ApplicationRecord
  has_many :orders
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address

  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true, uniqueness: true
end
