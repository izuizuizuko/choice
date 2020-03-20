require 'test_helper'

class RestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rest = rests(:one)
  end

  test "should get index" do
    get rests_url
    assert_response :success
  end

  test "should get new" do
    get new_rest_url
    assert_response :success
  end

  test "should create rest" do
    assert_difference('Rest.count') do
      post rests_url, params: { rest: { advice1: @rest.advice1, advice2: @rest.advice2, advice3: @rest.advice3, company: @rest.company, name: @rest.name, picture: @rest.picture, pit1: @rest.pit1, pit2: @rest.pit2, pit3: @rest.pit3, point: @rest.point, rank: @rest.rank } }
    end

    assert_redirected_to rest_url(Rest.last)
  end

  test "should show rest" do
    get rest_url(@rest)
    assert_response :success
  end

  test "should get edit" do
    get edit_rest_url(@rest)
    assert_response :success
  end

  test "should update rest" do
    patch rest_url(@rest), params: { rest: { advice1: @rest.advice1, advice2: @rest.advice2, advice3: @rest.advice3, company: @rest.company, name: @rest.name, picture: @rest.picture, pit1: @rest.pit1, pit2: @rest.pit2, pit3: @rest.pit3, point: @rest.point, rank: @rest.rank } }
    assert_redirected_to rest_url(@rest)
  end

  test "should destroy rest" do
    assert_difference('Rest.count', -1) do
      delete rest_url(@rest)
    end

    assert_redirected_to rests_url
  end
end
