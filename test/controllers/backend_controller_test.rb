require 'test_helper'

class BackendControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get backend_home_url
    assert_response :success
  end

  test "should get menu" do
    get backend_menu_url
    assert_response :success
  end

end
