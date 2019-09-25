require "application_system_test_case"

class ExportTypesTest < ApplicationSystemTestCase
  setup do
    @export_type = export_types(:one)
  end

  test "visiting the index" do
    visit export_types_url
    assert_selector "h1", text: "Export Types"
  end

  test "creating a Export type" do
    visit export_types_url
    click_on "New Export Type"

    fill_in "Name", with: @export_type.name
    fill_in "Type code", with: @export_type.type_code
    click_on "Create Export type"

    assert_text "Export type was successfully created"
    click_on "Back"
  end

  test "updating a Export type" do
    visit export_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @export_type.name
    fill_in "Type code", with: @export_type.type_code
    click_on "Update Export type"

    assert_text "Export type was successfully updated"
    click_on "Back"
  end

  test "destroying a Export type" do
    visit export_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Export type was successfully destroyed"
  end
end
