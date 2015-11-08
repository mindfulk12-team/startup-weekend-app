require 'test_helper'

class StudentControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

end
