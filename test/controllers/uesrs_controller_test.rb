require 'test_helper'

class UesrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uesr = uesrs(:one)
  end

  test "should get index" do
    get uesrs_url
    assert_response :success
  end

  test "should get new" do
    get new_uesr_url
    assert_response :success
  end

  test "should create uesr" do
    assert_difference('Uesr.count') do
      post uesrs_url, params: { uesr: { email: @uesr.email, name: @uesr.name } }
    end

    assert_redirected_to uesr_url(Uesr.last)
  end

  test "should show uesr" do
    get uesr_url(@uesr)
    assert_response :success
  end

  test "should get edit" do
    get edit_uesr_url(@uesr)
    assert_response :success
  end

  test "should update uesr" do
    patch uesr_url(@uesr), params: { uesr: { email: @uesr.email, name: @uesr.name } }
    assert_redirected_to uesr_url(@uesr)
  end

  test "should destroy uesr" do
    assert_difference('Uesr.count', -1) do
      delete uesr_url(@uesr)
    end

    assert_redirected_to uesrs_url
  end
end
