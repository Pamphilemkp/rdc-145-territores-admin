require "application_system_test_case"

class AmbassadorsTest < ApplicationSystemTestCase
  setup do
    @ambassador = ambassadors(:one)
  end

  test "visiting the index" do
    visit ambassadors_url
    assert_selector "h1", text: "Ambassadors"
  end

  test "should create ambassador" do
    visit ambassadors_url
    click_on "New ambassador"

    fill_in "Address", with: @ambassador.address
    fill_in "Citizenship", with: @ambassador.citizenship
    fill_in "Comment", with: @ambassador.comment
    fill_in "Email", with: @ambassador.email
    fill_in "First name", with: @ambassador.first_name
    fill_in "Last name", with: @ambassador.last_name
    fill_in "Phone", with: @ambassador.phone
    fill_in "Position", with: @ambassador.position
    fill_in "Presentation", with: @ambassador.presentation
    fill_in "Reason of choice", with: @ambassador.reason_of_choice
    fill_in "Territoire", with: @ambassador.territoire
    click_on "Create Ambassador"

    assert_text "Ambassador was successfully created"
    click_on "Back"
  end

  test "should update Ambassador" do
    visit ambassador_url(@ambassador)
    click_on "Edit this ambassador", match: :first

    fill_in "Address", with: @ambassador.address
    fill_in "Citizenship", with: @ambassador.citizenship
    fill_in "Comment", with: @ambassador.comment
    fill_in "Email", with: @ambassador.email
    fill_in "First name", with: @ambassador.first_name
    fill_in "Last name", with: @ambassador.last_name
    fill_in "Phone", with: @ambassador.phone
    fill_in "Position", with: @ambassador.position
    fill_in "Presentation", with: @ambassador.presentation
    fill_in "Reason of choice", with: @ambassador.reason_of_choice
    fill_in "Territoire", with: @ambassador.territoire
    click_on "Update Ambassador"

    assert_text "Ambassador was successfully updated"
    click_on "Back"
  end

  test "should destroy Ambassador" do
    visit ambassador_url(@ambassador)
    click_on "Destroy this ambassador", match: :first

    assert_text "Ambassador was successfully destroyed"
  end
end
