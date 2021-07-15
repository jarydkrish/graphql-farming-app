module Types
  class FarmFieldType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :plantings, [PlantingType], null: false
    field :farm, FarmType, null: false
  end
end
