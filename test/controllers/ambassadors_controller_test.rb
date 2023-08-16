require "test_helper"

class AmbassadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ambassador = ambassadors(:one)
  end

  test "should get index" do
    get ambassadors_url
    assert_response :success
  end

  test "should get new" do
    get new_ambassador_url
    assert_response :success
  end

  test "should create ambassador" do
    assert_difference("Ambassador.count") do
      post ambassadors_url, params: { ambassador: { address: @ambassador.address, citizenship: @ambassador.citizenship, comment: @ambassador.comment, email: @ambassador.email, first_name: @ambassador.first_name, last_name: @ambassador.last_name, phone: @ambassador.phone, position: @ambassador.position, presentation: @ambassador.presentation, reason_of_choice: @ambassador.reason_of_choice, territoire: @ambassador.territoire } }
    end

    assert_redirected_to ambassador_url(Ambassador.last)
  end

  test "should show ambassador" do
    get ambassador_url(@ambassador)
    assert_response :success
  end

  test "should get edit" do
    get edit_ambassador_url(@ambassador)
    assert_response :success
  end

  test "should update ambassador" do
    patch ambassador_url(@ambassador), params: { ambassador: { address: @ambassador.address, citizenship: @ambassador.citizenship, comment: @ambassador.comment, email: @ambassador.email, first_name: @ambassador.first_name, last_name: @ambassador.last_name, phone: @ambassador.phone, position: @ambassador.position, presentation: @ambassador.presentation, reason_of_choice: @ambassador.reason_of_choice, territoire: @ambassador.territoire } }
    assert_redirected_to ambassador_url(@ambassador)
  end

  test "should destroy ambassador" do
    assert_difference("Ambassador.count", -1) do
      delete ambassador_url(@ambassador)
    end

    assert_redirected_to ambassadors_url
  end
end
