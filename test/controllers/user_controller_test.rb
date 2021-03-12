require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get team_roster" do
    get user_team_roster_url
    assert_response :success
  end

  test "should get calendar" do
    get user_calendar_url
    assert_response :success
  end

  test "should get commitment" do
    get user_commitment_url
    assert_response :success
  end

  test "should get event" do
    get user_event_url
    assert_response :success
  end
end
