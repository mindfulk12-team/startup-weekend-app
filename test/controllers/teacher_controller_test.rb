require 'test_helper'

class TeacherControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get activities" do
    get :activities
    assert_response :success
  end

end
