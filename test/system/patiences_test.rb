require "application_system_test_case"

class PatiencesTest < ApplicationSystemTestCase
  setup do
    @patience = patiences(:one)
  end

  test "visiting the index" do
    visit patiences_url
    assert_selector "h1", text: "Patiences"
  end

  test "creating a Patience" do
    visit patiences_url
    click_on "New Patience"

    fill_in "Fullname", with: @patience.fullname
    fill_in "Medicines", with: @patience.medicines
    fill_in "Sickness", with: @patience.sickness
    fill_in "User", with: @patience.user_id
    click_on "Create Patience"

    assert_text "Patience was successfully created"
    click_on "Back"
  end

  test "updating a Patience" do
    visit patiences_url
    click_on "Edit", match: :first

    fill_in "Fullname", with: @patience.fullname
    fill_in "Medicines", with: @patience.medicines
    fill_in "Sickness", with: @patience.sickness
    fill_in "User", with: @patience.user_id
    click_on "Update Patience"

    assert_text "Patience was successfully updated"
    click_on "Back"
  end

  test "destroying a Patience" do
    visit patiences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patience was successfully destroyed"
  end
end
