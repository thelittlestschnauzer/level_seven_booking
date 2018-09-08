class Service < ApplicationRecord
  has_many :stylists, through: :bookings
  has_many :clients, through: :bookings

  has_many :bookings, inverse: :services
  accepts_nested_attributes_for :bookings
end
