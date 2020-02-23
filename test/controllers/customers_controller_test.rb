require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  
  setup do
    
    @customer = customers(:one)
  
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end


  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
