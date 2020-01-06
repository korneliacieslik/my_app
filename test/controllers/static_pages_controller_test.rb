require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
  	get root_url
  	assert_response :success
  end 
  
  test "should get home" do
    get root_path
    assert_response :success
    # an assertion that selects elements amd makes equality test
    assert_select "title", "Home | Healthy bowl"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Healthy bowl"
  end

  test "should get opinions" do
    get opinions_path
    assert_response :success
    assert_select "title", "Opinions | Healthy bowl"
  end
end
