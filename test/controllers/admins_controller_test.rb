require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get admins_login_url
    assert_response :success
  end

  test "should get logout" do
    get admins_logout_url
    assert_response :success
  end

end
