require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get students" do
    get admins_students_url
    assert_response :success
  end

  test "should get instructors" do
    get admins_instructors_url
    assert_response :success
  end

  test "should get cohorts" do
    get admins_cohorts_url
    assert_response :success
  end

end
