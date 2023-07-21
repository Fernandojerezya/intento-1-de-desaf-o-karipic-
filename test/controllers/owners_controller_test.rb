require "test_helper"

class OwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get pages" do
    get owners_pages_url
    assert_response :success
  end

  test "should get home" do
    get owners_home_url
    assert_response :success
  end
end
