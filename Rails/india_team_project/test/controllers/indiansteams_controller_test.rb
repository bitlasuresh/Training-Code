require 'test_helper'

class IndiansteamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indiansteam = indiansteams(:one)
  end

  test "should get index" do
    get indiansteams_url
    assert_response :success
  end

  test "should get new" do
    get new_indiansteam_url
    assert_response :success
  end

  test "should create indiansteam" do
    assert_difference('Indiansteam.count') do
      post indiansteams_url, params: { indiansteam: {  } }
    end

    assert_redirected_to indiansteam_url(Indiansteam.last)
  end

  test "should show indiansteam" do
    get indiansteam_url(@indiansteam)
    assert_response :success
  end

  test "should get edit" do
    get edit_indiansteam_url(@indiansteam)
    assert_response :success
  end

  test "should update indiansteam" do
    patch indiansteam_url(@indiansteam), params: { indiansteam: {  } }
    assert_redirected_to indiansteam_url(@indiansteam)
  end

  test "should destroy indiansteam" do
    assert_difference('Indiansteam.count', -1) do
      delete indiansteam_url(@indiansteam)
    end

    assert_redirected_to indiansteams_url
  end
end
