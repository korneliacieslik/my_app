require 'test_helper'

class OpinionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get opinion_index_url
    assert_response :success
  end

  test "should get new" do
    get opinion_new_url
    assert_response :success
  end

  test "should get create" do
    get opinion_create_url
    assert_response :success
  end

  test "should get destroy" do
    get opinion_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get opinion_edit_url
    assert_response :success
  end

end
