require 'test_helper'

class LandingControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | 3d News"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | 3d News"
  end

  test "should get gallery" do
  	get gallery_path
  	assert_response :success
  	assert_select "title", "Gallery | 3d News"
  end

end
