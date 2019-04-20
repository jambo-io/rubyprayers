require "application_system_test_case"

class PrayersTest < ApplicationSystemTestCase
  setup do
    @prayer = prayers(:one)
  end

  test "visiting the index" do
    visit prayers_url
    assert_selector "h1", text: "Prayers"
  end

  test "creating a Prayer" do
    visit prayers_url
    click_on "New Prayer"

    fill_in "Author", with: @prayer.author
    fill_in "Prayer", with: @prayer.prayer
    click_on "Create Prayer"

    assert_text "Prayer was successfully created"
    click_on "Back"
  end

  test "updating a Prayer" do
    visit prayers_url
    click_on "Edit", match: :first

    fill_in "Author", with: @prayer.author
    fill_in "Prayer", with: @prayer.prayer
    click_on "Update Prayer"

    assert_text "Prayer was successfully updated"
    click_on "Back"
  end

  test "destroying a Prayer" do
    visit prayers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prayer was successfully destroyed"
  end
end
