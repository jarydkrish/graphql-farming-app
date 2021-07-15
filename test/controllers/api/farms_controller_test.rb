require "test_helper"

class Api::FarmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farm = farms(:farm_one)
  end

  test "should get index" do
    get api_farms_url, as: :json
    assert_response :success
  end

  test "should create farm" do
    assert_difference('Farm.count') do
      post api_farms_url, params: { farm: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show farm" do
    get api_farm_url(@farm), as: :json
    assert_response :success
  end

  test "should update farm" do
    patch api_farm_url(@farm), params: { farm: {  } }, as: :json
    assert_response 200
  end

  test "should destroy farm" do
    assert_difference('Farm.count', -1) do
      delete api_farm_url(@farm), as: :json
    end

    assert_response 204
  end
end
