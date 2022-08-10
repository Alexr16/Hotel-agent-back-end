class User < ApplicationRecord
    
  has_many :hotels
  has_many :reservations
  validates :name, presence: true, length: { minimum: 3, maximum: 250 } , dependent: :destroy
end
