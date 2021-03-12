require "application_system_test_case"

class CustomeredsTest < ApplicationSystemTestCase
  setup do
    @customered = customereds(:one)
  end

  test "visiting the index" do
    visit customereds_url
    assert_selector "h1", text: "Customereds"
  end

  test "creating a Customered" do
    visit customereds_url
    click_on "New Customered"

    fill_in "First name", with: @customered.first_name
    fill_in "Id card", with: @customered.id_card
    fill_in "Last name", with: @customered.last_name
    fill_in "Parent", with: @customered.parent_id
    click_on "Create Customered"

    assert_text "Customered was successfully created"
    click_on "Back"
  end

  test "updating a Customered" do
    visit customereds_url
    click_on "Edit", match: :first

    fill_in "First name", with: @customered.first_name
    fill_in "Id card", with: @customered.id_card
    fill_in "Last name", with: @customered.last_name
    fill_in "Parent", with: @customered.parent_id
    click_on "Update Customered"

    assert_text "Customered was successfully updated"
    click_on "Back"
  end

  test "destroying a Customered" do
    visit customereds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customered was successfully destroyed"
  end
end
