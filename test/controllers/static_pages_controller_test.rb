require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

	def setup
		@base_title = "Ruby on Rails Sample App"
	end

  test "Should get the 'Home' page" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "Should get the 'Help' page" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "Should get the 'About' page" do
  	get :about
  	assert_response :success
  	assert_select "title", "About | #{@base_title}"
  end

end
