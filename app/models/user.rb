class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :hotels, dependent: :destroy
  has_many :reservations, dependent: :destroy
  validates :name, :password, presence: true, length: { minimum: 3, maximum: 250 }
end
