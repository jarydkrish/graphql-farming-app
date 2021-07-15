module Types
  class PlantingType < Types::BaseObject
    field :id, ID, null: false
    field :farm_field_id, Integer, null: false
    field :crop_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :farm_field, Types::FarmFieldType, null: true
    field :crop, Types::CropType, null: true

    def crop
      Loaders::BelongsToLoader.for(Crop).load(object.crop_id)
    end

    def farm_field
      Loaders::BelongsToLoader.for(FarmField).load(object.farm_field_id)
    end
  end
end
