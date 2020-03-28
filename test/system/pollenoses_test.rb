require "application_system_test_case"

class PollenosesTest < ApplicationSystemTestCase
  setup do
    @pollenose = pollenoses(:one)
  end

  test "visiting the index" do
    visit pollenoses_url
    assert_selector "h1", text: "Pollenoses"
  end

  test "creating a Pollenosis" do
    visit pollenoses_url
    click_on "New Pollenosis"

    fill_in "Company", with: @pollenose.company
    fill_in "Name", with: @pollenose.name
    fill_in "Point", with: @pollenose.point
    fill_in "Rank", with: @pollenose.rank
    click_on "Create Pollenosis"

    assert_text "Pollenosis was successfully created"
    click_on "Back"
  end

  test "updating a Pollenosis" do
    visit pollenoses_url
    click_on "Edit", match: :first

    fill_in "Company", with: @pollenose.company
    fill_in "Name", with: @pollenose.name
    fill_in "Point", with: @pollenose.point
    fill_in "Rank", with: @pollenose.rank
    click_on "Update Pollenosis"

    assert_text "Pollenosis was successfully updated"
    click_on "Back"
  end

  test "destroying a Pollenosis" do
    visit pollenoses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pollenosis was successfully destroyed"
  end
end
