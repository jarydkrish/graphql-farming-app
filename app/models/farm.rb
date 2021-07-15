class Farm < ApplicationRecord
  has_many :farm_fields, dependent: :destroy
end
