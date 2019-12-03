class User < ApplicationRecord
  has_many :cars
  has_many :bookings
  has_many :reviews
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :driving_license, presence: true, uniqueness: true, length: { in: 5..50 }


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
