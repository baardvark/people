require 'test_helper'

class StaticPeopleControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_people_home_url
    assert_response :success
  end

  test "should get about" do
    get static_people_about_url
    assert_response :success
  end

end
