class Booking < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :reviews, presence: true
  validates :start_date, presence: true, availability: true
  validates :end_date, presence: true, availability: true
  validates :total_price, presence: true
  validates :status, presence: true

end
