class Planting < ApplicationRecord
  belongs_to :farm_field
  belongs_to :crop
end
