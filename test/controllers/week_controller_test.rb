require "test_helper"

class WeekControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get week_show_url
    assert_response :success
  end
end
