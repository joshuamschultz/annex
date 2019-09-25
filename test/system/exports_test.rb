require "application_system_test_case"

class ExportsTest < ApplicationSystemTestCase
  setup do
    @export = exports(:one)
  end

  test "visiting the index" do
    visit exports_url
    assert_selector "h1", text: "Exports"
  end

  test "creating a Export" do
    visit exports_url
    click_on "New Export"

    fill_in "Assigned number", with: @export.assigned_number
    fill_in "Import date", with: @export.import_date
    fill_in "Import type", with: @export.import_type_id
    fill_in "Iva", with: @export.iva
    fill_in "Notes", with: @export.notes
    fill_in "Pedimento number", with: @export.pedimento_number
    fill_in "Total", with: @export.total
    click_on "Create Export"

    assert_text "Export was successfully created"
    click_on "Back"
  end

  test "updating a Export" do
    visit exports_url
    click_on "Edit", match: :first

    fill_in "Assigned number", with: @export.assigned_number
    fill_in "Import date", with: @export.import_date
    fill_in "Import type", with: @export.import_type_id
    fill_in "Iva", with: @export.iva
    fill_in "Notes", with: @export.notes
    fill_in "Pedimento number", with: @export.pedimento_number
    fill_in "Total", with: @export.total
    click_on "Update Export"

    assert_text "Export was successfully updated"
    click_on "Back"
  end

  test "destroying a Export" do
    visit exports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Export was successfully destroyed"
  end
end
