require 'test_helper'

class CampingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get campings_index_url
    assert_response :success
  end

  test "should get search" do
    get campings_search_url
    assert_response :success
  end

  test "should get show" do
    get campings_show_url
    assert_response :success
  end

  test "should get new" do
    get campings_new_url
    assert_response :success
  end

end
