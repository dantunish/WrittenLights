require 'test_helper'

class InstructorsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get instructors_create_url
    assert_response :success
  end

  test "should get new" do
    get instructors_new_url
    assert_response :success
  end

end
