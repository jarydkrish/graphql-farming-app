class Crop < ApplicationRecord
  has_many :plantings, dependent: :destroy
end
