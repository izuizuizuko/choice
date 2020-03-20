require 'test_helper'

class RedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @red = reds(:one)
  end

  test "should get index" do
    get reds_url
    assert_response :success
  end

  test "should get new" do
    get new_red_url
    assert_response :success
  end

  test "should create red" do
    assert_difference('Red.count') do
      post reds_url, params: { red: { advice1: @red.advice1, advice3: @red.advice3, avdice2: @red.avdice2, company: @red.company, name: @red.name, picture: @red.picture, pit1: @red.pit1, pit2: @red.pit2, pit3: @red.pit3, point: @red.point, rank: @red.rank } }
    end

    assert_redirected_to red_url(Red.last)
  end

  test "should show red" do
    get red_url(@red)
    assert_response :success
  end

  test "should get edit" do
    get edit_red_url(@red)
    assert_response :success
  end

  test "should update red" do
    patch red_url(@red), params: { red: { advice1: @red.advice1, advice3: @red.advice3, avdice2: @red.avdice2, company: @red.company, name: @red.name, picture: @red.picture, pit1: @red.pit1, pit2: @red.pit2, pit3: @red.pit3, point: @red.point, rank: @red.rank } }
    assert_redirected_to red_url(@red)
  end

  test "should destroy red" do
    assert_difference('Red.count', -1) do
      delete red_url(@red)
    end

    assert_redirected_to reds_url
  end
end
