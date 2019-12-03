class Car < ApplicationRecord
  belongs_to :user


  ENGINE_TYPES = ["diesel", "petrol", "electric"]
  validates :engine_type, inclusion: { in: ENGINE_TYPES }
end
