require 'test_helper'

module Loaders
  class BelongsToLoaderTest < ActiveSupport::TestCase
    test 'the belongs to loader loads relations correctly' do
      farm = farms(:farm_one)
      farm_field = farm.farm_fields.first

      farm_field_farm = GraphQL::Batch.batch do
        Loaders::BelongsToLoader.for(Farm).load(farm_field.farm_id)
      end
      assert_equal farm, farm_field_farm
    end
  end
end
