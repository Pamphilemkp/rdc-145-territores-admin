require "test_helper"

class SpeakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speaker = speakers(:one)
  end

  test "should get index" do
    get speakers_url
    assert_response :success
  end

  test "should get new" do
    get new_speaker_url
    assert_response :success
  end

  test "should create speaker" do
    assert_difference("Speaker.count") do
      post speakers_url, params: { speaker: { address: @speaker.address, biography: @speaker.biography, citizenship: @speaker.citizenship, email: @speaker.email, feedback: @speaker.feedback, first_name: @speaker.first_name, hear_about_us: @speaker.hear_about_us, last_name: @speaker.last_name, occupation: @speaker.occupation, phone: @speaker.phone, photo: @speaker.photo, presentation: @speaker.presentation } }
    end

    assert_redirected_to speaker_url(Speaker.last)
  end

  test "should show speaker" do
    get speaker_url(@speaker)
    assert_response :success
  end

  test "should get edit" do
    get edit_speaker_url(@speaker)
    assert_response :success
  end

  test "should update speaker" do
    patch speaker_url(@speaker), params: { speaker: { address: @speaker.address, biography: @speaker.biography, citizenship: @speaker.citizenship, email: @speaker.email, feedback: @speaker.feedback, first_name: @speaker.first_name, hear_about_us: @speaker.hear_about_us, last_name: @speaker.last_name, occupation: @speaker.occupation, phone: @speaker.phone, photo: @speaker.photo, presentation: @speaker.presentation } }
    assert_redirected_to speaker_url(@speaker)
  end

  test "should destroy speaker" do
    assert_difference("Speaker.count", -1) do
      delete speaker_url(@speaker)
    end

    assert_redirected_to speakers_url
  end
end
