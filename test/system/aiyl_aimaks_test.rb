require "application_system_test_case"

class AiylAimaksTest < ApplicationSystemTestCase
  setup do
    @aiyl_aimak = aiyl_aimaks(:one)
  end

  test "visiting the index" do
    visit aiyl_aimaks_url
    assert_selector "h1", text: "Aiyl Aimaks"
  end

  test "creating a Aiyl aimak" do
    visit aiyl_aimaks_url
    click_on "New Aiyl Aimak"

    fill_in "District", with: @aiyl_aimak.district_id
    fill_in "Name", with: @aiyl_aimak.name
    fill_in "Oblast", with: @aiyl_aimak.oblast_id
    fill_in "Soate", with: @aiyl_aimak.soate
    click_on "Create Aiyl aimak"

    assert_text "Aiyl aimak was successfully created"
    click_on "Back"
  end

  test "updating a Aiyl aimak" do
    visit aiyl_aimaks_url
    click_on "Edit", match: :first

    fill_in "District", with: @aiyl_aimak.district_id
    fill_in "Name", with: @aiyl_aimak.name
    fill_in "Oblast", with: @aiyl_aimak.oblast_id
    fill_in "Soate", with: @aiyl_aimak.soate
    click_on "Update Aiyl aimak"

    assert_text "Aiyl aimak was successfully updated"
    click_on "Back"
  end

  test "destroying a Aiyl aimak" do
    visit aiyl_aimaks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aiyl aimak was successfully destroyed"
  end
end
