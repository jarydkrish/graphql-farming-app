class GraphqlFarmingAppSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  # Add graphql batch
  use GraphQL::Batch
end
