require "application_system_test_case"

class ParticipantsTest < ApplicationSystemTestCase
  setup do
    @participant = participants(:one)
  end

  test "visiting the index" do
    visit participants_url
    assert_selector "h1", text: "Participants"
  end

  test "should create participant" do
    visit participants_url
    click_on "New participant"

    fill_in "Address", with: @participant.address
    fill_in "Full name", with: @participant.full_name
    fill_in "Impact of idea", with: @participant.impact_of_idea
    fill_in "Investment idea", with: @participant.investment_idea
    fill_in "Phone", with: @participant.phone
    fill_in "Proffession", with: @participant.proffession
    fill_in "Proffessional experience", with: @participant.proffessional_experience
    fill_in "Province of interest", with: @participant.province_of_interest
    fill_in "Sector of investment", with: @participant.sector_of_investment
    fill_in "Summary of project", with: @participant.summary_of_project
    click_on "Create Participant"

    assert_text "Participant was successfully created"
    click_on "Back"
  end

  test "should update Participant" do
    visit participant_url(@participant)
    click_on "Edit this participant", match: :first

    fill_in "Address", with: @participant.address
    fill_in "Full name", with: @participant.full_name
    fill_in "Impact of idea", with: @participant.impact_of_idea
    fill_in "Investment idea", with: @participant.investment_idea
    fill_in "Phone", with: @participant.phone
    fill_in "Proffession", with: @participant.proffession
    fill_in "Proffessional experience", with: @participant.proffessional_experience
    fill_in "Province of interest", with: @participant.province_of_interest
    fill_in "Sector of investment", with: @participant.sector_of_investment
    fill_in "Summary of project", with: @participant.summary_of_project
    click_on "Update Participant"

    assert_text "Participant was successfully updated"
    click_on "Back"
  end

  test "should destroy Participant" do
    visit participant_url(@participant)
    click_on "Destroy this participant", match: :first

    assert_text "Participant was successfully destroyed"
  end
end
