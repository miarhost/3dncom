require 'test_helper'

class LandingControllerTest < ActionDispatch::IntegrationTest

	test "should get root" do
		get landing_home_url
		assert_response :success
	end

	def setup
		@base_title = "3d News"
	end

  test "should get home" do
    get landing_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about" do
    get landing_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

end
