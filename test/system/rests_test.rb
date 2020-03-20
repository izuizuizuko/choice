require "application_system_test_case"

class RestsTest < ApplicationSystemTestCase
  setup do
    @rest = rests(:one)
  end

  test "visiting the index" do
    visit rests_url
    assert_selector "h1", text: "Rests"
  end

  test "creating a Rest" do
    visit rests_url
    click_on "New Rest"

    fill_in "Advice1", with: @rest.advice1
    fill_in "Advice2", with: @rest.advice2
    fill_in "Advice3", with: @rest.advice3
    fill_in "Company", with: @rest.company
    fill_in "Name", with: @rest.name
    fill_in "Picture", with: @rest.picture
    fill_in "Pit1", with: @rest.pit1
    fill_in "Pit2", with: @rest.pit2
    fill_in "Pit3", with: @rest.pit3
    fill_in "Point", with: @rest.point
    fill_in "Rank", with: @rest.rank
    click_on "Create Rest"

    assert_text "Rest was successfully created"
    click_on "Back"
  end

  test "updating a Rest" do
    visit rests_url
    click_on "Edit", match: :first

    fill_in "Advice1", with: @rest.advice1
    fill_in "Advice2", with: @rest.advice2
    fill_in "Advice3", with: @rest.advice3
    fill_in "Company", with: @rest.company
    fill_in "Name", with: @rest.name
    fill_in "Picture", with: @rest.picture
    fill_in "Pit1", with: @rest.pit1
    fill_in "Pit2", with: @rest.pit2
    fill_in "Pit3", with: @rest.pit3
    fill_in "Point", with: @rest.point
    fill_in "Rank", with: @rest.rank
    click_on "Update Rest"

    assert_text "Rest was successfully updated"
    click_on "Back"
  end

  test "destroying a Rest" do
    visit rests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rest was successfully destroyed"
  end
end
