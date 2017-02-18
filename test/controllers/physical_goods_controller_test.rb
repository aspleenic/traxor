require 'test_helper'

class PhysicalGoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physical_good = physical_goods(:one)
  end

  test "should get index" do
    get physical_goods_url
    assert_response :success
  end

  test "should get new" do
    get new_physical_good_url
    assert_response :success
  end

  test "should create physical_good" do
    assert_difference('PhysicalGood.count') do
      post physical_goods_url, params: { physical_good: { other_goods: @physical_good.other_goods, other_goods_cost: @physical_good.other_goods_cost, stickers_cost: @physical_good.stickers_cost, tshirt_cost: @physical_good.tshirt_cost, tshirt_count: @physical_good.tshirt_count, tshirts_distributed: @physical_good.tshirts_distributed } }
    end

    assert_redirected_to physical_good_url(PhysicalGood.last)
  end

  test "should show physical_good" do
    get physical_good_url(@physical_good)
    assert_response :success
  end

  test "should get edit" do
    get edit_physical_good_url(@physical_good)
    assert_response :success
  end

  test "should update physical_good" do
    patch physical_good_url(@physical_good), params: { physical_good: { other_goods: @physical_good.other_goods, other_goods_cost: @physical_good.other_goods_cost, stickers_cost: @physical_good.stickers_cost, tshirt_cost: @physical_good.tshirt_cost, tshirt_count: @physical_good.tshirt_count, tshirts_distributed: @physical_good.tshirts_distributed } }
    assert_redirected_to physical_good_url(@physical_good)
  end

  test "should destroy physical_good" do
    assert_difference('PhysicalGood.count', -1) do
      delete physical_good_url(@physical_good)
    end

    assert_redirected_to physical_goods_url
  end
end
