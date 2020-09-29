require 'test_helper'

class PatiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patience = patiences(:one)
  end

  test "should get index" do
    get patiences_url
    assert_response :success
  end

  test "should get new" do
    get new_patience_url
    assert_response :success
  end

  test "should create patience" do
    assert_difference('Patience.count') do
      post patiences_url, params: { patience: { fullname: @patience.fullname, medicines: @patience.medicines, sickness: @patience.sickness, user_id: @patience.user_id } }
    end

    assert_redirected_to patience_url(Patience.last)
  end

  test "should show patience" do
    get patience_url(@patience)
    assert_response :success
  end

  test "should get edit" do
    get edit_patience_url(@patience)
    assert_response :success
  end

  test "should update patience" do
    patch patience_url(@patience), params: { patience: { fullname: @patience.fullname, medicines: @patience.medicines, sickness: @patience.sickness, user_id: @patience.user_id } }
    assert_redirected_to patience_url(@patience)
  end

  test "should destroy patience" do
    assert_difference('Patience.count', -1) do
      delete patience_url(@patience)
    end

    assert_redirected_to patiences_url
  end
end
