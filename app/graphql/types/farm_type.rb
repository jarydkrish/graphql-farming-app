module Types
  class FarmType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :farm_fields, [Types::FarmFieldType], null: false

    def farm_fields
      Loaders::HasManyLoader.for(FarmField, :farm_id).load([object.id])
    end
  end
end
