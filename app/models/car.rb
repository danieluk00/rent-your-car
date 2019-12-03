class Car < ApplicationRecord
  belongs_to :user
  validates :engine_type, presence: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :description, presence: true


  ENGINE_TYPES = ["diesel", "petrol", "electric"]
  validates :engine_type, inclusion: { in: ENGINE_TYPES }
end
