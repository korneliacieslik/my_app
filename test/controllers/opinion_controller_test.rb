require 'test_helper'

class OpinionControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do 
    
    get opinions_path
    
    assert_response :success
  
  end

  test "should get new" do
   
    get new_opinion_path
    
    assert_response :success
  
  end

end
