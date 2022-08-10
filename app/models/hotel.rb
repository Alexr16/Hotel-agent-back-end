class Hotel < ApplicationRecord
  has_many :reservations
  belongs_to :user
  validates :name, :description,:address, presence: true, length: { minimum: 3, maximum: 250 } , dependent: :destroy
  validates :cost,presence: true, numericality: { greater_than: 0, only_float: true }, dependent: :destroy
end
