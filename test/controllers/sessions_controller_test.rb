require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sessions_create_url
    assert_response :success
  end

  test "should get detroy" do
    get sessions_detroy_url
    assert_response :success
  end

end
