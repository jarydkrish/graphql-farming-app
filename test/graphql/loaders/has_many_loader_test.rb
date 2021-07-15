require 'test_helper'

module Loaders
  class HasManyLoaderTest < ActiveSupport::TestCase
    test 'the has many loader loads relations correctly' do
      farm = farms(:farm_one)
      farm_fields = farm.farm_fields

      found_farm_fields = GraphQL::Batch.batch do
        HasManyLoader.for(FarmField, :farm_id).load([farm.id])
      end
      assert_equal farm_fields, found_farm_fields
    end
  end
end
