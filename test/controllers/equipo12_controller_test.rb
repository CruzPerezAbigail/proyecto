require "test_helper"

class Equipo12ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get equipo12_index_url
    assert_response :success
  end

  test "should get show" do
    get equipo12_show_url
    assert_response :success
  end

  test "should get new" do
    get equipo12_new_url
    assert_response :success
  end

  test "should get create" do
    get equipo12_create_url
    assert_response :success
  end

  test "should get edit" do
    get equipo12_edit_url
    assert_response :success
  end

  test "should get update" do
    get equipo12_update_url
    assert_response :success
  end

  test "should get destroy" do
    get equipo12_destroy_url
    assert_response :success
  end
end
