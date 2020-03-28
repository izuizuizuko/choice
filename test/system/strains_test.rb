require "application_system_test_case"

class StrainsTest < ApplicationSystemTestCase
  setup do
    @strain = strains(:one)
  end

  test "visiting the index" do
    visit strains_url
    assert_selector "h1", text: "Strains"
  end

  test "creating a Strain" do
    visit strains_url
    click_on "New Strain"

    fill_in "Advice1", with: @strain.advice1
    fill_in "Advice2", with: @strain.advice2
    fill_in "Advice3", with: @strain.advice3
    fill_in "Company", with: @strain.company
    fill_in "Name", with: @strain.name
    fill_in "Picture", with: @strain.picture
    fill_in "Pit1", with: @strain.pit1
    fill_in "Pit2", with: @strain.pit2
    fill_in "Pit3", with: @strain.pit3
    fill_in "Point", with: @strain.point
    fill_in "Rank", with: @strain.rank
    click_on "Create Strain"

    assert_text "Strain was successfully created"
    click_on "Back"
  end

  test "updating a Strain" do
    visit strains_url
    click_on "Edit", match: :first

    fill_in "Advice1", with: @strain.advice1
    fill_in "Advice2", with: @strain.advice2
    fill_in "Advice3", with: @strain.advice3
    fill_in "Company", with: @strain.company
    fill_in "Name", with: @strain.name
    fill_in "Picture", with: @strain.picture
    fill_in "Pit1", with: @strain.pit1
    fill_in "Pit2", with: @strain.pit2
    fill_in "Pit3", with: @strain.pit3
    fill_in "Point", with: @strain.point
    fill_in "Rank", with: @strain.rank
    click_on "Update Strain"

    assert_text "Strain was successfully updated"
    click_on "Back"
  end

  test "destroying a Strain" do
    visit strains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Strain was successfully destroyed"
  end
end
