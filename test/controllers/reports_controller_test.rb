require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get usage" do
    get reports_usage_url
    assert_response :success
  end

  test "should get inventory" do
    get reports_inventory_url
    assert_response :success
  end

  test "should get annex24" do
    get reports_annex24_url
    assert_response :success
  end

end
