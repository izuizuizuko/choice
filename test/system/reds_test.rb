require "application_system_test_case"

class RedsTest < ApplicationSystemTestCase
  setup do
    @red = reds(:one)
  end

  test "visiting the index" do
    visit reds_url
    assert_selector "h1", text: "Reds"
  end

  test "creating a Red" do
    visit reds_url
    click_on "New Red"

    fill_in "Advice1", with: @red.advice1
    fill_in "Advice3", with: @red.advice3
    fill_in "Avdice2", with: @red.avdice2
    fill_in "Company", with: @red.company
    fill_in "Name", with: @red.name
    fill_in "Picture", with: @red.picture
    fill_in "Pit1", with: @red.pit1
    fill_in "Pit2", with: @red.pit2
    fill_in "Pit3", with: @red.pit3
    fill_in "Point", with: @red.point
    fill_in "Rank", with: @red.rank
    click_on "Create Red"

    assert_text "Red was successfully created"
    click_on "Back"
  end

  test "updating a Red" do
    visit reds_url
    click_on "Edit", match: :first

    fill_in "Advice1", with: @red.advice1
    fill_in "Advice3", with: @red.advice3
    fill_in "Avdice2", with: @red.avdice2
    fill_in "Company", with: @red.company
    fill_in "Name", with: @red.name
    fill_in "Picture", with: @red.picture
    fill_in "Pit1", with: @red.pit1
    fill_in "Pit2", with: @red.pit2
    fill_in "Pit3", with: @red.pit3
    fill_in "Point", with: @red.point
    fill_in "Rank", with: @red.rank
    click_on "Update Red"

    assert_text "Red was successfully updated"
    click_on "Back"
  end

  test "destroying a Red" do
    visit reds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Red was successfully destroyed"
  end
end
