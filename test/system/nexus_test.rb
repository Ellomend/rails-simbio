require "application_system_test_case"

class NexusTest < ApplicationSystemTestCase
  setup do
    @nexu = nexus(:one)
  end

  test "visiting the index" do
    visit nexus_url
    assert_selector "h1", text: "Nexus"
  end

  test "creating a Nexu" do
    visit nexus_url
    click_on "New Nexu"

    fill_in "Name", with: @nexu.name
    click_on "Create Nexu"

    assert_text "Nexu was successfully created"
    click_on "Back"
  end

  test "updating a Nexu" do
    visit nexus_url
    click_on "Edit", match: :first

    fill_in "Name", with: @nexu.name
    click_on "Update Nexu"

    assert_text "Nexu was successfully updated"
    click_on "Back"
  end

  test "destroying a Nexu" do
    visit nexus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nexu was successfully destroyed"
  end
end
