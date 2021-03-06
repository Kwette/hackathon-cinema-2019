require 'test_helper'

class TalksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get talks_new_url
    assert_response :success
  end

  test "should get create" do
    get talks_create_url
    assert_response :success
  end

  test "should get index" do
    get talks_index_url
    assert_response :success
  end

  test "should get edit" do
    get talks_edit_url
    assert_response :success
  end

  test "should get update" do
    get talks_update_url
    assert_response :success
  end

  test "should get delete" do
    get talks_delete_url
    assert_response :success
  end

end
