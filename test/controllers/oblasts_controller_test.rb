require 'test_helper'

class OblastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oblast = oblasts(:one)
  end

  test "should get index" do
    get oblasts_url
    assert_response :success
  end

  test "should get new" do
    get new_oblast_url
    assert_response :success
  end

  test "should create oblast" do
    assert_difference('Oblast.count') do
      post oblasts_url, params: { oblast: { name: @oblast.name, soate: @oblast.soate } }
    end

    assert_redirected_to oblast_url(Oblast.last)
  end

  test "should show oblast" do
    get oblast_url(@oblast)
    assert_response :success
  end

  test "should get edit" do
    get edit_oblast_url(@oblast)
    assert_response :success
  end

  test "should update oblast" do
    patch oblast_url(@oblast), params: { oblast: { name: @oblast.name, soate: @oblast.soate } }
    assert_redirected_to oblast_url(@oblast)
  end

  test "should destroy oblast" do
    assert_difference('Oblast.count', -1) do
      delete oblast_url(@oblast)
    end

    assert_redirected_to oblasts_url
  end
end
