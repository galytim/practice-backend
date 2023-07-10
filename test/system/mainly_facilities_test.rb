require "application_system_test_case"

class MainlyFacilitiesTest < ApplicationSystemTestCase
  setup do
    @mainly_facility = mainly_facilities(:one)
  end

  test "visiting the index" do
    visit mainly_facilities_url
    assert_selector "h1", text: "Mainly facilities"
  end

  test "should create mainly facility" do
    visit mainly_facilities_url
    click_on "New mainly facility"

    fill_in "Accumulateddepreciaton", with: @mainly_facility.accumulatedDepreciaton
    fill_in "Code", with: @mainly_facility.code
    fill_in "Codeendusing", with: @mainly_facility.codeEndUsing
    fill_in "Dateendusing", with: @mainly_facility.dateEndUsing
    fill_in "Datestartusing", with: @mainly_facility.dateStartUsing
    fill_in "Initcost", with: @mainly_facility.initCost
    fill_in "Name", with: @mainly_facility.name
    fill_in "Regulatorytermservices", with: @mainly_facility.regulatoryTermServices
    fill_in "Residualvalue", with: @mainly_facility.residualValue
    click_on "Create Mainly facility"

    assert_text "Mainly facility was successfully created"
    click_on "Back"
  end

  test "should update Mainly facility" do
    visit mainly_facility_url(@mainly_facility)
    click_on "Edit this mainly facility", match: :first

    fill_in "Accumulateddepreciaton", with: @mainly_facility.accumulatedDepreciaton
    fill_in "Code", with: @mainly_facility.code
    fill_in "Codeendusing", with: @mainly_facility.codeEndUsing
    fill_in "Dateendusing", with: @mainly_facility.dateEndUsing
    fill_in "Datestartusing", with: @mainly_facility.dateStartUsing
    fill_in "Initcost", with: @mainly_facility.initCost
    fill_in "Name", with: @mainly_facility.name
    fill_in "Regulatorytermservices", with: @mainly_facility.regulatoryTermServices
    fill_in "Residualvalue", with: @mainly_facility.residualValue
    click_on "Update Mainly facility"

    assert_text "Mainly facility was successfully updated"
    click_on "Back"
  end

  test "should destroy Mainly facility" do
    visit mainly_facility_url(@mainly_facility)
    click_on "Destroy this mainly facility", match: :first

    assert_text "Mainly facility was successfully destroyed"
  end
end
