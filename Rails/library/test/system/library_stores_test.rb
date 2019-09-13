require "application_system_test_case"

class LibraryStoresTest < ApplicationSystemTestCase
  setup do
    @library_store = library_stores(:one)
  end

  test "visiting the index" do
    visit library_stores_url
    assert_selector "h1", text: "Library Stores"
  end

  test "creating a Library store" do
    visit library_stores_url
    click_on "New Library Store"

    fill_in "Author", with: @library_store.author
    fill_in "Name", with: @library_store.name
    click_on "Create Library store"

    assert_text "Library store was successfully created"
    click_on "Back"
  end

  test "updating a Library store" do
    visit library_stores_url
    click_on "Edit", match: :first

    fill_in "Author", with: @library_store.author
    fill_in "Name", with: @library_store.name
    click_on "Update Library store"

    assert_text "Library store was successfully updated"
    click_on "Back"
  end

  test "destroying a Library store" do
    visit library_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Library store was successfully destroyed"
  end
end
