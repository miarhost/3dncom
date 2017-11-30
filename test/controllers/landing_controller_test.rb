require 'test_helper'

class LandingControllerTest < ActionDispatch::IntegrationTest


  test "should get home" do
    get landing_home_url
    assert_response :success
    assert_select "title", "Home | 3d News"
  end

  test "should get about" do
    get landing_about_url
    assert_response :success
    assert_select "title", "About | 3d News"
  end
end
