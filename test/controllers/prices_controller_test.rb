require 'test_helper'

class PricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @price = prices(:one)
  end

  test "should get index" do
    get prices_url
    assert_response :success
  end

  test "should create price" do
    assert_difference('Price.count') do
      post prices_url, params: { price: { dollars: @price.dollars, set_at: @price.set_at } }
    end

    assert_response 201
  end

  test "should show price" do
    get price_url(@price)
    assert_response :success
  end

  test "should update price" do
    patch price_url(@price), params: { price: { dollars: @price.dollars, set_at: @price.set_at } }
    assert_response 200
  end

  test "should destroy price" do
    assert_difference('Price.count', -1) do
      delete price_url(@price)
    end

    assert_response 204
  end
end
