class Hotel < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user
  validates :name, :description, :address, presence: true, length: { minimum: 3, maximum: 250 }
  validates :cost, presence: true, numericality: { greater_than: 0, only_float: true }
end
