require 'test_helper'

class AiylAimaksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aiyl_aimak = aiyl_aimaks(:one)
  end

  test "should get index" do
    get aiyl_aimaks_url
    assert_response :success
  end

  test "should get new" do
    get new_aiyl_aimak_url
    assert_response :success
  end

  test "should create aiyl_aimak" do
    assert_difference('AiylAimak.count') do
      post aiyl_aimaks_url, params: { aiyl_aimak: { district_id: @aiyl_aimak.district_id, name: @aiyl_aimak.name, oblast_id: @aiyl_aimak.oblast_id, soate: @aiyl_aimak.soate } }
    end

    assert_redirected_to aiyl_aimak_url(AiylAimak.last)
  end

  test "should show aiyl_aimak" do
    get aiyl_aimak_url(@aiyl_aimak)
    assert_response :success
  end

  test "should get edit" do
    get edit_aiyl_aimak_url(@aiyl_aimak)
    assert_response :success
  end

  test "should update aiyl_aimak" do
    patch aiyl_aimak_url(@aiyl_aimak), params: { aiyl_aimak: { district_id: @aiyl_aimak.district_id, name: @aiyl_aimak.name, oblast_id: @aiyl_aimak.oblast_id, soate: @aiyl_aimak.soate } }
    assert_redirected_to aiyl_aimak_url(@aiyl_aimak)
  end

  test "should destroy aiyl_aimak" do
    assert_difference('AiylAimak.count', -1) do
      delete aiyl_aimak_url(@aiyl_aimak)
    end

    assert_redirected_to aiyl_aimaks_url
  end
end
