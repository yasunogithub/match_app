require 'test_helper'

class Teacher::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get teacher_sessions_new_url
    assert_response :success
  end

end
