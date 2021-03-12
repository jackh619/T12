require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get team_roster" do
    get admin_team_roster_url
    assert_response :success
  end

  test "should get calendar" do
    get admin_calendar_url
    assert_response :success
  end

  test "should get commitment" do
    get admin_commitment_url
    assert_response :success
  end

  test "should get event" do
    get admin_event_url
    assert_response :success
  end
end
