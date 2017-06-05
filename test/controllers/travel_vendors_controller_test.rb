require 'test_helper'

class TravelVendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_vendor = travel_vendors(:one)
  end

  test "should get index" do
    get travel_vendors_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_vendor_url
    assert_response :success
  end

  test "should create travel_vendor" do
    assert_difference('TravelVendor.count') do
      post travel_vendors_url, params: { travel_vendor: { email: @travel_vendor.email, name: @travel_vendor.name, ph_no: @travel_vendor.ph_no, url: @travel_vendor.url } }
    end

    assert_redirected_to travel_vendor_url(TravelVendor.last)
  end

  test "should show travel_vendor" do
    get travel_vendor_url(@travel_vendor)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_vendor_url(@travel_vendor)
    assert_response :success
  end

  test "should update travel_vendor" do
    patch travel_vendor_url(@travel_vendor), params: { travel_vendor: { email: @travel_vendor.email, name: @travel_vendor.name, ph_no: @travel_vendor.ph_no, url: @travel_vendor.url } }
    assert_redirected_to travel_vendor_url(@travel_vendor)
  end

  test "should destroy travel_vendor" do
    assert_difference('TravelVendor.count', -1) do
      delete travel_vendor_url(@travel_vendor)
    end

    assert_redirected_to travel_vendors_url
  end
end
