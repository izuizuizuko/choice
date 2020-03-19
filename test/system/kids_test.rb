require "application_system_test_case"

class KidsTest < ApplicationSystemTestCase
  setup do
    @kid = kids(:one)
  end

  test "visiting the index" do
    visit kids_url
    assert_selector "h1", text: "Kids"
  end

  test "creating a Kid" do
    visit kids_url
    click_on "New Kid"

    fill_in "Advice1", with: @kid.advice1
    fill_in "Advice2", with: @kid.advice2
    fill_in "Advice3", with: @kid.advice3
    fill_in "Company", with: @kid.company
    fill_in "Name", with: @kid.name
    fill_in "Picture", with: @kid.picture
    fill_in "Pit1", with: @kid.pit1
    fill_in "Pit2", with: @kid.pit2
    fill_in "Pit3", with: @kid.pit3
    fill_in "Point", with: @kid.point
    fill_in "Rank", with: @kid.rank
    click_on "Create Kid"

    assert_text "Kid was successfully created"
    click_on "Back"
  end

  test "updating a Kid" do
    visit kids_url
    click_on "Edit", match: :first

    fill_in "Advice1", with: @kid.advice1
    fill_in "Advice2", with: @kid.advice2
    fill_in "Advice3", with: @kid.advice3
    fill_in "Company", with: @kid.company
    fill_in "Name", with: @kid.name
    fill_in "Picture", with: @kid.picture
    fill_in "Pit1", with: @kid.pit1
    fill_in "Pit2", with: @kid.pit2
    fill_in "Pit3", with: @kid.pit3
    fill_in "Point", with: @kid.point
    fill_in "Rank", with: @kid.rank
    click_on "Update Kid"

    assert_text "Kid was successfully updated"
    click_on "Back"
  end

  test "destroying a Kid" do
    visit kids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kid was successfully destroyed"
  end
end
