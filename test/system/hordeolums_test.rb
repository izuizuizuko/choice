require "application_system_test_case"

class HordeolumsTest < ApplicationSystemTestCase
  setup do
    @hordeolum = hordeolums(:one)
  end

  test "visiting the index" do
    visit hordeolums_url
    assert_selector "h1", text: "Hordeolums"
  end

  test "creating a Hordeolum" do
    visit hordeolums_url
    click_on "New Hordeolum"

    fill_in "Advice1", with: @hordeolum.advice1
    fill_in "Advice2", with: @hordeolum.advice2
    fill_in "Advice3", with: @hordeolum.advice3
    fill_in "Company", with: @hordeolum.company
    fill_in "Name", with: @hordeolum.name
    fill_in "Picture", with: @hordeolum.picture
    fill_in "Pit1", with: @hordeolum.pit1
    fill_in "Pit2", with: @hordeolum.pit2
    fill_in "Pit3", with: @hordeolum.pit3
    fill_in "Point1", with: @hordeolum.point1
    fill_in "Rank", with: @hordeolum.rank
    click_on "Create Hordeolum"

    assert_text "Hordeolum was successfully created"
    click_on "Back"
  end

  test "updating a Hordeolum" do
    visit hordeolums_url
    click_on "Edit", match: :first

    fill_in "Advice1", with: @hordeolum.advice1
    fill_in "Advice2", with: @hordeolum.advice2
    fill_in "Advice3", with: @hordeolum.advice3
    fill_in "Company", with: @hordeolum.company
    fill_in "Name", with: @hordeolum.name
    fill_in "Picture", with: @hordeolum.picture
    fill_in "Pit1", with: @hordeolum.pit1
    fill_in "Pit2", with: @hordeolum.pit2
    fill_in "Pit3", with: @hordeolum.pit3
    fill_in "Point1", with: @hordeolum.point1
    fill_in "Rank", with: @hordeolum.rank
    click_on "Update Hordeolum"

    assert_text "Hordeolum was successfully updated"
    click_on "Back"
  end

  test "destroying a Hordeolum" do
    visit hordeolums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hordeolum was successfully destroyed"
  end
end
