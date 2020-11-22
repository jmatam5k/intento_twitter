require "application_system_test_case"

class TweeeetsTest < ApplicationSystemTestCase
  setup do
    @tweeeet = tweeeets(:one)
  end

  test "visiting the index" do
    visit tweeeets_url
    assert_selector "h1", text: "Tweeeets"
  end

  test "creating a Tweeeet" do
    visit tweeeets_url
    click_on "New Tweeeet"

    fill_in "Tweeeet", with: @tweeeet.tweeeet
    click_on "Create Tweeeet"

    assert_text "Tweeeet was successfully created"
    click_on "Back"
  end

  test "updating a Tweeeet" do
    visit tweeeets_url
    click_on "Edit", match: :first

    fill_in "Tweeeet", with: @tweeeet.tweeeet
    click_on "Update Tweeeet"

    assert_text "Tweeeet was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweeeet" do
    visit tweeeets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweeeet was successfully destroyed"
  end
end
