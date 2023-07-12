require "test_helper"

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @participant = participants(:one)
  end

  test "should get index" do
    get participants_url
    assert_response :success
  end

  test "should get new" do
    get new_participant_url
    assert_response :success
  end

  test "should create participant" do
    assert_difference("Participant.count") do
      post participants_url, params: { participant: { address: @participant.address, first_name: @participant.first_name, impact_of_idea: @participant.impact_of_idea, investment_idea: @participant.investment_idea, last_name: @participant.last_name, proffession: @participant.proffession, proffessional_experience: @participant.proffessional_experience, province_of_interest: @participant.province_of_interest, sector_of_investment: @participant.sector_of_investment, summary_of_project: @participant.summary_of_project } }
    end

    assert_redirected_to participant_url(Participant.last)
  end

  test "should show participant" do
    get participant_url(@participant)
    assert_response :success
  end

  test "should get edit" do
    get edit_participant_url(@participant)
    assert_response :success
  end

  test "should update participant" do
    patch participant_url(@participant), params: { participant: { address: @participant.address, first_name: @participant.first_name, impact_of_idea: @participant.impact_of_idea, investment_idea: @participant.investment_idea, last_name: @participant.last_name, proffession: @participant.proffession, proffessional_experience: @participant.proffessional_experience, province_of_interest: @participant.province_of_interest, sector_of_investment: @participant.sector_of_investment, summary_of_project: @participant.summary_of_project } }
    assert_redirected_to participant_url(@participant)
  end

  test "should destroy participant" do
    assert_difference("Participant.count", -1) do
      delete participant_url(@participant)
    end

    assert_redirected_to participants_url
  end
end
