require "application_system_test_case"

class CustomProductsTest < ApplicationSystemTestCase
  setup do
    @custom_product = custom_products(:one)
  end

  test "visiting the index" do
    visit custom_products_url
    assert_selector "h1", text: "Custom Products"
  end

  test "creating a Custom product" do
    visit custom_products_url
    click_on "New Custom Product"

    fill_in "Back", with: @custom_product.back
    fill_in "Color", with: @custom_product.color
    fill_in "Front", with: @custom_product.front
    fill_in "Left sleeve", with: @custom_product.left_sleeve
    fill_in "Product", with: @custom_product.product_id
    fill_in "Quantity", with: @custom_product.quantity
    fill_in "Right sleeve", with: @custom_product.right_sleeve
    fill_in "Size", with: @custom_product.size
    click_on "Create Custom product"

    assert_text "Custom product was successfully created"
    click_on "Back"
  end

  test "updating a Custom product" do
    visit custom_products_url
    click_on "Edit", match: :first

    fill_in "Back", with: @custom_product.back
    fill_in "Color", with: @custom_product.color
    fill_in "Front", with: @custom_product.front
    fill_in "Left sleeve", with: @custom_product.left_sleeve
    fill_in "Product", with: @custom_product.product_id
    fill_in "Quantity", with: @custom_product.quantity
    fill_in "Right sleeve", with: @custom_product.right_sleeve
    fill_in "Size", with: @custom_product.size
    click_on "Update Custom product"

    assert_text "Custom product was successfully updated"
    click_on "Back"
  end

  test "destroying a Custom product" do
    visit custom_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custom product was successfully destroyed"
  end
end
