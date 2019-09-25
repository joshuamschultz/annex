require 'test_helper'

class ImportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @import = imports(:one)
  end

  test "should get index" do
    get imports_url
    assert_response :success
  end

  test "should get new" do
    get new_import_url
    assert_response :success
  end

  test "should create import" do
    assert_difference('Import.count') do
      post imports_url, params: { import: { assigned_number: @import.assigned_number, import_date: @import.import_date, import_type_id: @import.import_type_id, iva: @import.iva, notes: @import.notes, pedimento_number: @import.pedimento_number, total: @import.total } }
    end

    assert_redirected_to import_url(Import.last)
  end

  test "should show import" do
    get import_url(@import)
    assert_response :success
  end

  test "should get edit" do
    get edit_import_url(@import)
    assert_response :success
  end

  test "should update import" do
    patch import_url(@import), params: { import: { assigned_number: @import.assigned_number, import_date: @import.import_date, import_type_id: @import.import_type_id, iva: @import.iva, notes: @import.notes, pedimento_number: @import.pedimento_number, total: @import.total } }
    assert_redirected_to import_url(@import)
  end

  test "should destroy import" do
    assert_difference('Import.count', -1) do
      delete import_url(@import)
    end

    assert_redirected_to imports_url
  end
end
