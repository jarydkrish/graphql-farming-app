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
      object.crop
    end

    def farm_field
      object.farm_field
    end
  end
end
