require 'test_helper'

class PollenosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pollenose = pollenoses(:one)
  end

  test "should get index" do
    get pollenoses_url
    assert_response :success
  end

  test "should get new" do
    get new_pollenose_url
    assert_response :success
  end

  test "should create pollenose" do
    assert_difference('Pollenosis.count') do
      post pollenoses_url, params: { pollenose: { company: @pollenose.company, name: @pollenose.name, point: @pollenose.point, rank: @pollenose.rank } }
    end

    assert_redirected_to pollenose_url(Pollenosis.last)
  end

  test "should show pollenose" do
    get pollenose_url(@pollenose)
    assert_response :success
  end

  test "should get edit" do
    get edit_pollenose_url(@pollenose)
    assert_response :success
  end

  test "should update pollenose" do
    patch pollenose_url(@pollenose), params: { pollenose: { company: @pollenose.company, name: @pollenose.name, point: @pollenose.point, rank: @pollenose.rank } }
    assert_redirected_to pollenose_url(@pollenose)
  end

  test "should destroy pollenose" do
    assert_difference('Pollenosis.count', -1) do
      delete pollenose_url(@pollenose)
    end

    assert_redirected_to pollenoses_url
  end
end
