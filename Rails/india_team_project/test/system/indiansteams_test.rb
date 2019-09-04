require "application_system_test_case"

class IndiansteamsTest < ApplicationSystemTestCase
  setup do
    @indiansteam = indiansteams(:one)
  end

  test "visiting the index" do
    visit indiansteams_url
    assert_selector "h1", text: "Indiansteams"
  end

  test "creating a Indiansteam" do
    visit indiansteams_url
    click_on "New Indiansteam"

    click_on "Create Indiansteam"

    assert_text "Indiansteam was successfully created"
    click_on "Back"
  end

  test "updating a Indiansteam" do
    visit indiansteams_url
    click_on "Edit", match: :first

    click_on "Update Indiansteam"

    assert_text "Indiansteam was successfully updated"
    click_on "Back"
  end

  test "destroying a Indiansteam" do
    visit indiansteams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Indiansteam was successfully destroyed"
  end
end
