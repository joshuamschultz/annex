require 'test_helper'

class ImportTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @import_type = import_types(:one)
  end

  test "should get index" do
    get import_types_url
    assert_response :success
  end

  test "should get new" do
    get new_import_type_url
    assert_response :success
  end

  test "should create import_type" do
    assert_difference('ImportType.count') do
      post import_types_url, params: { import_type: { name: @import_type.name, type_code: @import_type.type_code } }
    end

    assert_redirected_to import_type_url(ImportType.last)
  end

  test "should show import_type" do
    get import_type_url(@import_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_import_type_url(@import_type)
    assert_response :success
  end

  test "should update import_type" do
    patch import_type_url(@import_type), params: { import_type: { name: @import_type.name, type_code: @import_type.type_code } }
    assert_redirected_to import_type_url(@import_type)
  end

  test "should destroy import_type" do
    assert_difference('ImportType.count', -1) do
      delete import_type_url(@import_type)
    end

    assert_redirected_to import_types_url
  end
end
