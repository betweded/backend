require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url, as: :json
    assert_response :success
  end

  test "should create property" do
    assert_difference("Property.count") do
      post properties_url, params: { property: { address: @property.address, area: @property.area, bathroom_count: @property.bathroom_count, bedroom_count: @property.bedroom_count, description: @property.description, latitude: @property.latitude, listing_type: @property.listing_type, longitude: @property.longitude, price: @property.price, property_status: @property.property_status, property_type: @property.property_type, user_id: @property.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show property" do
    get property_url(@property), as: :json
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { address: @property.address, area: @property.area, bathroom_count: @property.bathroom_count, bedroom_count: @property.bedroom_count, description: @property.description, latitude: @property.latitude, listing_type: @property.listing_type, longitude: @property.longitude, price: @property.price, property_status: @property.property_status, property_type: @property.property_type, user_id: @property.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy property" do
    assert_difference("Property.count", -1) do
      delete property_url(@property), as: :json
    end

    assert_response :no_content
  end
end
