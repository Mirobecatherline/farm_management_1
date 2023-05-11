require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get home_about_url
    assert_response :success
  end

  test "should get contact" do
    get home_contact_url
    assert_response :success
  end

  test "should get location" do
    get home_location_url
    assert_response :success
  end

  test "should get our_coffee" do
    get home_our_coffee_url
    assert_response :success
  end
end
