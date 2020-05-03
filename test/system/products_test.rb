require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "add Product to Cart" do
    visit products_url
    click_on "Add to cart", match: :first

    assert_text "Product added to cart."
    click_on "Back"
  end

end
