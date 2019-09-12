require 'test_helper'

class ExportTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @export_type = export_types(:one)
  end

  test "should get index" do
    get export_types_url
    assert_response :success
  end

  test "should get new" do
    get new_export_type_url
    assert_response :success
  end

  test "should create export_type" do
    assert_difference('ExportType.count') do
      post export_types_url, params: { export_type: { name: @export_type.name, type_code: @export_type.type_code } }
    end

    assert_redirected_to export_type_url(ExportType.last)
  end

  test "should show export_type" do
    get export_type_url(@export_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_export_type_url(@export_type)
    assert_response :success
  end

  test "should update export_type" do
    patch export_type_url(@export_type), params: { export_type: { name: @export_type.name, type_code: @export_type.type_code } }
    assert_redirected_to export_type_url(@export_type)
  end

  test "should destroy export_type" do
    assert_difference('ExportType.count', -1) do
      delete export_type_url(@export_type)
    end

    assert_redirected_to export_types_url
  end
end
