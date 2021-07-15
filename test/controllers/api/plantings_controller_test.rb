require 'test_helper'

class Api::PlantingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planting = plantings(:planting_one)
  end

  test 'should get index' do
    get api_plantings_url, as: :json
    assert_response :success
  end

  test 'should create planting' do
    assert_difference('Planting.count') do
      post api_plantings_url, params: { crop_id: @planting.crop_id, farm_field_id: @planting.farm_field_id }, as: :json
    end

    assert_response 201
  end

  test 'should show planting' do
    get api_planting_url(@planting), as: :json
    assert_response :success
  end

  test 'should update planting' do
    farm_field_two = farm_fields(:field_two)
    patch api_planting_url(@planting), params: { planting: { farm_field_id: farm_field_two.id } }, as: :json
    assert_response 200
  end

  test 'should destroy planting' do
    assert_difference('Planting.count', -1) do
      delete api_planting_url(@planting), as: :json
    end

    assert_response 204
  end
end
