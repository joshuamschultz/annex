require "application_system_test_case"

class ImportsTest < ApplicationSystemTestCase
  setup do
    @import = imports(:one)
  end

  test "visiting the index" do
    visit imports_url
    assert_selector "h1", text: "Imports"
  end

  test "creating a Import" do
    visit imports_url
    click_on "New Import"

    fill_in "Assigned number", with: @import.assigned_number
    fill_in "Import date", with: @import.import_date
    fill_in "Import type", with: @import.import_type_id
    fill_in "Iva", with: @import.iva
    fill_in "Notes", with: @import.notes
    fill_in "Pedimento number", with: @import.pedimento_number
    fill_in "Total", with: @import.total
    click_on "Create Import"

    assert_text "Import was successfully created"
    click_on "Back"
  end

  test "updating a Import" do
    visit imports_url
    click_on "Edit", match: :first

    fill_in "Assigned number", with: @import.assigned_number
    fill_in "Import date", with: @import.import_date
    fill_in "Import type", with: @import.import_type_id
    fill_in "Iva", with: @import.iva
    fill_in "Notes", with: @import.notes
    fill_in "Pedimento number", with: @import.pedimento_number
    fill_in "Total", with: @import.total
    click_on "Update Import"

    assert_text "Import was successfully updated"
    click_on "Back"
  end

  test "destroying a Import" do
    visit imports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Import was successfully destroyed"
  end
end
