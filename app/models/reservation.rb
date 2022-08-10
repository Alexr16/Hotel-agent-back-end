class Reservation < ApplicationRecord
  belongs_to :hotel
  belongs_to :user
  validates :city, presence: true, length: { minimum: 3, maximum: 250 } 
  validates :date, presence: true
  validates :number_of_days, :number_of_rooms, :number_of_guests, numericality: { greater_than: 0, only_integer: true }
end
