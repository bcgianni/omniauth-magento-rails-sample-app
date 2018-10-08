require 'test_helper'

class MagentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @magento = magentos(:one)
  end

  test "should get index" do
    get magentos_url
    assert_response :success
  end

  test "should get new" do
    get new_magento_url
    assert_response :success
  end

  test "should create magento" do
    assert_difference('Magento.count') do
      post magentos_url, params: { magento: {  } }
    end

    assert_redirected_to magento_url(Magento.last)
  end

  test "should show magento" do
    get magento_url(@magento)
    assert_response :success
  end

  test "should get edit" do
    get edit_magento_url(@magento)
    assert_response :success
  end

  test "should update magento" do
    patch magento_url(@magento), params: { magento: {  } }
    assert_redirected_to magento_url(@magento)
  end

  test "should destroy magento" do
    assert_difference('Magento.count', -1) do
      delete magento_url(@magento)
    end

    assert_redirected_to magentos_url
  end
end
