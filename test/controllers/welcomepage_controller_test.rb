require 'test_helper'

class WelcomepageControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
