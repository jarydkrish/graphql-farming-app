module Types
  class CropType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :plantings, [PlantingType], null: false

    def plantings
      # dataloader.with(Sources::ActiveRecordObject, ::Planting, :crop_id).load([object.id])
      Loaders::HasManyLoader.for(Planting, :crop_id).load([object.id])
    end
  end
end
