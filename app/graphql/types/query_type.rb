module Types
  class QueryType < Types::BaseObject
    field :crops, [Types::CropType], null: false
    field :farm_fields, [Types::FarmFieldType], null: false
    field :plantings, [Types::PlantingType], null: false

    def crops
      Crop.all
    end

    def farm_fields
      FarmField.all
    end

    def plantings
      Planting.all
    end
  end
end
