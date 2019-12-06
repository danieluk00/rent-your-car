class Car < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  validates :engine_type, presence: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :price, presence: true
  validates :location, presence: true
  # validates :description, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  ENGINE_TYPES = ["Diesel", "Petrol", "Electric"]
  validates :engine_type, inclusion: { in: ENGINE_TYPES }

end
