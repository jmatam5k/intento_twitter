require 'test_helper'

class TweeeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweeeet = tweeeets(:one)
  end

  test "should get index" do
    get tweeeets_url
    assert_response :success
  end

  test "should get new" do
    get new_tweeeet_url
    assert_response :success
  end

  test "should create tweeeet" do
    assert_difference('Tweeeet.count') do
      post tweeeets_url, params: { tweeeet: { tweeeet: @tweeeet.tweeeet } }
    end

    assert_redirected_to tweeeet_url(Tweeeet.last)
  end

  test "should show tweeeet" do
    get tweeeet_url(@tweeeet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweeeet_url(@tweeeet)
    assert_response :success
  end

  test "should update tweeeet" do
    patch tweeeet_url(@tweeeet), params: { tweeeet: { tweeeet: @tweeeet.tweeeet } }
    assert_redirected_to tweeeet_url(@tweeeet)
  end

  test "should destroy tweeeet" do
    assert_difference('Tweeeet.count', -1) do
      delete tweeeet_url(@tweeeet)
    end

    assert_redirected_to tweeeets_url
  end
end
