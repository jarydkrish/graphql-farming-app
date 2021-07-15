require 'test_helper'

class Api::FarmFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farm_field = farm_fields(:field_one)
  end

  test 'should get index' do
    get api_farm_fields_url, as: :json
    assert_response :success
  end

  test 'should create farm_field' do
    assert_difference('FarmField.count') do
      post api_farm_fields_url, params: { name: 'Test field', farm_id: @farm_field.farm_id }, as: :json
    end

    assert_response 201
  end

  test 'should show farm_field' do
    get api_farm_field_url(@farm_field), as: :json
    assert_response :success
  end

  test 'should update farm_field' do
    patch api_farm_field_url(@farm_field), params: { farm_field: { name: 'Test field' } }, as: :json
    assert_response 200
  end

  test 'should destroy farm_field' do
    assert_difference('FarmField.count', -1) do
      delete api_farm_field_url(@farm_field), as: :json
    end

    assert_response 204
  end
end
