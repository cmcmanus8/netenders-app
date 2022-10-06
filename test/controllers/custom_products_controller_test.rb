require "test_helper"

class CustomProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_product = custom_products(:one)
  end

  test "should get index" do
    get custom_products_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_product_url
    assert_response :success
  end

  test "should create custom_product" do
    assert_difference('CustomProduct.count') do
      post custom_products_url, params: { custom_product: { back: @custom_product.back, color: @custom_product.color, front: @custom_product.front, left_sleeve: @custom_product.left_sleeve, product_id: @custom_product.product_id, quantity: @custom_product.quantity, right_sleeve: @custom_product.right_sleeve, size: @custom_product.size } }
    end

    assert_redirected_to custom_product_url(CustomProduct.last)
  end

  test "should show custom_product" do
    get custom_product_url(@custom_product)
    assert_response :success
  end

  test "should destroy custom_product" do
    assert_difference('CustomProduct.count', -1) do
      delete custom_product_url(@custom_product)
    end

    assert_redirected_to custom_products_url
  end
end
