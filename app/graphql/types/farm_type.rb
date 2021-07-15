module Types
  class FarmType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :farm_fields, [Types::FarmFieldType], null: false

    def farm_fields
      object.farm_fields
    end
  end
end
