class FarmField < ApplicationRecord
  belongs_to :farm
  has_many :plantings, dependent: :destroy
end
