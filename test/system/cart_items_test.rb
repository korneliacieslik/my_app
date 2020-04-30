require "application_system_test_case"

class CartItemsTest < ApplicationSystemTestCase

  test "visiting the index" do
    visit cart_items_url
    assert_selector "h1", text: "Cart Items"
  end



end
