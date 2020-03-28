require 'test_helper'

class HordeolumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hordeolum = hordeolums(:one)
  end

  test "should get index" do
    get hordeolums_url
    assert_response :success
  end

  test "should get new" do
    get new_hordeolum_url
    assert_response :success
  end

  test "should create hordeolum" do
    assert_difference('Hordeolum.count') do
      post hordeolums_url, params: { hordeolum: { advice1: @hordeolum.advice1, advice2: @hordeolum.advice2, advice3: @hordeolum.advice3, company: @hordeolum.company, name: @hordeolum.name, picture: @hordeolum.picture, pit1: @hordeolum.pit1, pit2: @hordeolum.pit2, pit3: @hordeolum.pit3, point1: @hordeolum.point1, rank: @hordeolum.rank } }
    end

    assert_redirected_to hordeolum_url(Hordeolum.last)
  end

  test "should show hordeolum" do
    get hordeolum_url(@hordeolum)
    assert_response :success
  end

  test "should get edit" do
    get edit_hordeolum_url(@hordeolum)
    assert_response :success
  end

  test "should update hordeolum" do
    patch hordeolum_url(@hordeolum), params: { hordeolum: { advice1: @hordeolum.advice1, advice2: @hordeolum.advice2, advice3: @hordeolum.advice3, company: @hordeolum.company, name: @hordeolum.name, picture: @hordeolum.picture, pit1: @hordeolum.pit1, pit2: @hordeolum.pit2, pit3: @hordeolum.pit3, point1: @hordeolum.point1, rank: @hordeolum.rank } }
    assert_redirected_to hordeolum_url(@hordeolum)
  end

  test "should destroy hordeolum" do
    assert_difference('Hordeolum.count', -1) do
      delete hordeolum_url(@hordeolum)
    end

    assert_redirected_to hordeolums_url
  end
end
