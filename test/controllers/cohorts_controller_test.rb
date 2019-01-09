require 'test_helper'

class CohortsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cohorts_create_url
    assert_response :success
  end

  test "should get new" do
    get cohorts_new_url
    assert_response :success
  end

end
