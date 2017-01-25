require 'test_helper'

class Api::V1::BeaconsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_beacons_index_url
    assert_response :success
  end

end
