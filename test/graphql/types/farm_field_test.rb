require 'test_helper'

module Types
  class FarmFieldTest < ActiveSupport::TestCase
    test 'rendering farm fields when hitting the GraphQL API' do
      query_string = <<-GRAPHQL
        query FarmFieldsQuery {
          farmFields {
            name
          }
        }
      GRAPHQL

      result = GraphqlFarmingAppSchema.execute(query_string)
      farm_fields_result = result.to_h['data']['farmFields']
      assert_equal FarmField.count, farm_fields_result.length
    end
  end
end
