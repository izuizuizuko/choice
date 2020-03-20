require 'test_helper'

class KidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kid = kids(:one)
  end

  test "should get index" do
    get kids_url
    assert_response :success
  end

  test "should get new" do
    get new_kid_url
    assert_response :success
  end

  test "should create kid" do
    assert_difference('Kid.count') do
      post kids_url, params: { kid: { advice1: @kid.advice1, advice2: @kid.advice2, advice3: @kid.advice3, company: @kid.company, name: @kid.name, picture: @kid.picture, pit1: @kid.pit1, pit2: @kid.pit2, pit3: @kid.pit3, point: @kid.point, rank: @kid.rank } }
    end

    assert_redirected_to kid_url(Kid.last)
  end

  test "should show kid" do
    get kid_url(@kid)
    assert_response :success
  end

  test "should get edit" do
    get edit_kid_url(@kid)
    assert_response :success
  end

  test "should update kid" do
    patch kid_url(@kid), params: { kid: { advice1: @kid.advice1, advice2: @kid.advice2, advice3: @kid.advice3, company: @kid.company, name: @kid.name, picture: @kid.picture, pit1: @kid.pit1, pit2: @kid.pit2, pit3: @kid.pit3, point: @kid.point, rank: @kid.rank } }
    assert_redirected_to kid_url(@kid)
  end

  test "should destroy kid" do
    assert_difference('Kid.count', -1) do
      delete kid_url(@kid)
    end

    assert_redirected_to kids_url
  end
end
