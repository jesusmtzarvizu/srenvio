require 'test_helper'

class Package2ControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get package2_home_url
    assert_response :success
  end

end
