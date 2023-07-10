require "test_helper"

class MainlyFacilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mainly_facility = mainly_facilities(:one)
  end

  test "should get index" do
    get mainly_facilities_url
    assert_response :success
  end

  test "should get new" do
    get new_mainly_facility_url
    assert_response :success
  end

  test "should create mainly_facility" do
    assert_difference("MainlyFacility.count") do
      post mainly_facilities_url, params: { mainly_facility: { accumulatedDepreciaton: @mainly_facility.accumulatedDepreciaton, code: @mainly_facility.code, codeEndUsing: @mainly_facility.codeEndUsing, dateEndUsing: @mainly_facility.dateEndUsing, dateStartUsing: @mainly_facility.dateStartUsing, initCost: @mainly_facility.initCost, name: @mainly_facility.name, regulatoryTermServices: @mainly_facility.regulatoryTermServices, residualValue: @mainly_facility.residualValue } }
    end

    assert_redirected_to mainly_facility_url(MainlyFacility.last)
  end

  test "should show mainly_facility" do
    get mainly_facility_url(@mainly_facility)
    assert_response :success
  end

  test "should get edit" do
    get edit_mainly_facility_url(@mainly_facility)
    assert_response :success
  end

  test "should update mainly_facility" do
    patch mainly_facility_url(@mainly_facility), params: { mainly_facility: { accumulatedDepreciaton: @mainly_facility.accumulatedDepreciaton, code: @mainly_facility.code, codeEndUsing: @mainly_facility.codeEndUsing, dateEndUsing: @mainly_facility.dateEndUsing, dateStartUsing: @mainly_facility.dateStartUsing, initCost: @mainly_facility.initCost, name: @mainly_facility.name, regulatoryTermServices: @mainly_facility.regulatoryTermServices, residualValue: @mainly_facility.residualValue } }
    assert_redirected_to mainly_facility_url(@mainly_facility)
  end

  test "should destroy mainly_facility" do
    assert_difference("MainlyFacility.count", -1) do
      delete mainly_facility_url(@mainly_facility)
    end

    assert_redirected_to mainly_facilities_url
  end
end
