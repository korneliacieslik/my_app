require 'test_helper'

class OpinionControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do 
    
    get '/opinions'
    
    assert_response :success
  
  end

  test "should get new" do
    
    get '/opinions/new'
    
    assert_response :success
  
  end

end
