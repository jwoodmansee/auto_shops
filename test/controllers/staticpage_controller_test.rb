require 'test_helper'

class StaticpageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get staticpage_home_url
    assert_response :success
  end

  test "should get about" do
    get staticpage_about_url
    assert_response :success
  end

end
