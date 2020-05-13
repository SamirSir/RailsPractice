require 'test_helper'

class DistrictsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get districts_new_url
    assert_response :success
  end

  test "should get edit" do
    get districts_edit_url
    assert_response :success
  end

  test "should get update" do
    get districts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get districts_destroy_url
    assert_response :success
  end

end
