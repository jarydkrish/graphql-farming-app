require 'test_helper'

class Api::CropsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crop = crops(:crop_one)
  end

  test 'should get index' do
    get api_crops_url, as: :json
    assert_response :success
  end

  test 'should create crop' do
    assert_difference('Crop.count') do
      post api_crops_url, params: { crop: { name: 'Test CROP' } }, as: :json
    end

    assert_response 201
  end

  test 'should show crop' do
    get api_crop_url(@crop), as: :json
    assert_response :success
  end

  test 'should update crop' do
    patch api_crop_url(@crop), params: { crop: { name: 'MY_NAME'  } }, as: :json
    assert_response 200
  end

  test 'should destroy crop' do
    assert_difference('Crop.count', -1) do
      delete api_crop_url(@crop), as: :json
    end

    assert_response 204
  end
end
