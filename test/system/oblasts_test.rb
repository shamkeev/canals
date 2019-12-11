require "application_system_test_case"

class OblastsTest < ApplicationSystemTestCase
  setup do
    @oblast = oblasts(:one)
  end

  test "visiting the index" do
    visit oblasts_url
    assert_selector "h1", text: "Oblasts"
  end

  test "creating a Oblast" do
    visit oblasts_url
    click_on "New Oblast"

    fill_in "Name", with: @oblast.name
    fill_in "Soate", with: @oblast.soate
    click_on "Create Oblast"

    assert_text "Oblast was successfully created"
    click_on "Back"
  end

  test "updating a Oblast" do
    visit oblasts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @oblast.name
    fill_in "Soate", with: @oblast.soate
    click_on "Update Oblast"

    assert_text "Oblast was successfully updated"
    click_on "Back"
  end

  test "destroying a Oblast" do
    visit oblasts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oblast was successfully destroyed"
  end
end
