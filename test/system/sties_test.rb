require "application_system_test_case"

class StiesTest < ApplicationSystemTestCase
  setup do
    @sty = sties(:one)
  end

  test "visiting the index" do
    visit sties_url
    assert_selector "h1", text: "Sties"
  end

  test "creating a Sty" do
    visit sties_url
    click_on "New Sty"

    fill_in "Advice2", with: @sty.advice2
    fill_in "Advice3", with: @sty.advice3
    fill_in "Avdice1", with: @sty.avdice1
    fill_in "Company", with: @sty.company
    fill_in "Name", with: @sty.name
    fill_in "Picture", with: @sty.picture
    fill_in "Pit1", with: @sty.pit1
    fill_in "Pit2", with: @sty.pit2
    fill_in "Pit3", with: @sty.pit3
    fill_in "Point", with: @sty.point
    fill_in "Rank", with: @sty.rank
    click_on "Create Sty"

    assert_text "Sty was successfully created"
    click_on "Back"
  end

  test "updating a Sty" do
    visit sties_url
    click_on "Edit", match: :first

    fill_in "Advice2", with: @sty.advice2
    fill_in "Advice3", with: @sty.advice3
    fill_in "Avdice1", with: @sty.avdice1
    fill_in "Company", with: @sty.company
    fill_in "Name", with: @sty.name
    fill_in "Picture", with: @sty.picture
    fill_in "Pit1", with: @sty.pit1
    fill_in "Pit2", with: @sty.pit2
    fill_in "Pit3", with: @sty.pit3
    fill_in "Point", with: @sty.point
    fill_in "Rank", with: @sty.rank
    click_on "Update Sty"

    assert_text "Sty was successfully updated"
    click_on "Back"
  end

  test "destroying a Sty" do
    visit sties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sty was successfully destroyed"
  end
end
