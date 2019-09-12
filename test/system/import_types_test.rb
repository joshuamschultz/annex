require "application_system_test_case"

class ImportTypesTest < ApplicationSystemTestCase
  setup do
    @import_type = import_types(:one)
  end

  test "visiting the index" do
    visit import_types_url
    assert_selector "h1", text: "Import Types"
  end

  test "creating a Import type" do
    visit import_types_url
    click_on "New Import Type"

    fill_in "Name", with: @import_type.name
    fill_in "Type code", with: @import_type.type_code
    click_on "Create Import type"

    assert_text "Import type was successfully created"
    click_on "Back"
  end

  test "updating a Import type" do
    visit import_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @import_type.name
    fill_in "Type code", with: @import_type.type_code
    click_on "Update Import type"

    assert_text "Import type was successfully updated"
    click_on "Back"
  end

  test "destroying a Import type" do
    visit import_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Import type was successfully destroyed"
  end
end
