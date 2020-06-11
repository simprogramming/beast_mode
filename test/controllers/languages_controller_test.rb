require 'test_helper'

class LanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get languages_index_url
    assert_response :success
  end

  test "should get new" do
    get languages_new_url
    assert_response :success
  end

  test "should get edit" do
    get languages_edit_url
    assert_response :success
  end

  test "should get update" do
    get languages_update_url
    assert_response :success
  end

end
