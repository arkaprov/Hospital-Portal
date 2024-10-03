require "test_helper"

class Doctor::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doctor_dashboard_index_url
    assert_response :success
  end
end
