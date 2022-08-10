class User < ApplicationRecord
  has_many :hotels, dependent: :destroy
  has_many :reservations, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3, maximum: 250 }
end
