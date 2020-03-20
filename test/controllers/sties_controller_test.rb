require 'test_helper'

class StiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sty = sties(:one)
  end

  test "should get index" do
    get sties_url
    assert_response :success
  end

  test "should get new" do
    get new_sty_url
    assert_response :success
  end

  test "should create sty" do
    assert_difference('Sty.count') do
      post sties_url, params: { sty: { advice2: @sty.advice2, advice3: @sty.advice3, avdice1: @sty.avdice1, company: @sty.company, name: @sty.name, picture: @sty.picture, pit1: @sty.pit1, pit2: @sty.pit2, pit3: @sty.pit3, point: @sty.point, rank: @sty.rank } }
    end

    assert_redirected_to sty_url(Sty.last)
  end

  test "should show sty" do
    get sty_url(@sty)
    assert_response :success
  end

  test "should get edit" do
    get edit_sty_url(@sty)
    assert_response :success
  end

  test "should update sty" do
    patch sty_url(@sty), params: { sty: { advice2: @sty.advice2, advice3: @sty.advice3, avdice1: @sty.avdice1, company: @sty.company, name: @sty.name, picture: @sty.picture, pit1: @sty.pit1, pit2: @sty.pit2, pit3: @sty.pit3, point: @sty.point, rank: @sty.rank } }
    assert_redirected_to sty_url(@sty)
  end

  test "should destroy sty" do
    assert_difference('Sty.count', -1) do
      delete sty_url(@sty)
    end

    assert_redirected_to sties_url
  end
end
