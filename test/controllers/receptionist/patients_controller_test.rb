require "test_helper"

class Receptionist::PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get receptionist_patients_index_url
    assert_response :success
  end

  test "should get new" do
    get receptionist_patients_new_url
    assert_response :success
  end

  test "should get create" do
    get receptionist_patients_create_url
    assert_response :success
  end

  test "should get edit" do
    get receptionist_patients_edit_url
    assert_response :success
  end

  test "should get update" do
    get receptionist_patients_update_url
    assert_response :success
  end

  test "should get destroy" do
    get receptionist_patients_destroy_url
    assert_response :success
  end
end
