require 'test_helper'

class AuthenticationControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get authentication_register_url
    assert_response :success
  end

  test "should get login" do
    get authentication_login_url
    assert_response :success
  end

end
