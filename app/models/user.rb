class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # devise :database_authenticatable,
  # # :jwt_authenticatable,
  # :registerable,
  # jwt_revocation_strategy: JwtDenylist

  has_many :hotels, dependent: :destroy
  has_many :reservations, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3, maximum: 250 }
end
