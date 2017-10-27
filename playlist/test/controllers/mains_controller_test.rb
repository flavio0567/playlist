require 'test_helper'

class MainsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mains_new_url
    assert_response :success
  end

  test "should get create" do
    get mains_create_url
    assert_response :success
  end

  test "should get destroy" do
    get mains_destroy_url
    assert_response :success
  end

end
