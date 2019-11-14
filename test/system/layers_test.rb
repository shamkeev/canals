require "application_system_test_case"

class LayersTest < ApplicationSystemTestCase
  setup do
    @layer = layers(:one)
  end

  test "visiting the index" do
    visit layers_url
    assert_selector "h1", text: "Layers"
  end

  test "creating a Layer" do
    visit layers_url
    click_on "New Layer"

    fill_in "Infra project", with: @layer.infra_project_id
    fill_in "Json", with: @layer.json
    fill_in "Title", with: @layer.title
    fill_in "Type", with: @layer.type
    click_on "Create Layer"

    assert_text "Layer was successfully created"
    click_on "Back"
  end

  test "updating a Layer" do
    visit layers_url
    click_on "Edit", match: :first

    fill_in "Infra project", with: @layer.infra_project_id
    fill_in "Json", with: @layer.json
    fill_in "Title", with: @layer.title
    fill_in "Type", with: @layer.type
    click_on "Update Layer"

    assert_text "Layer was successfully updated"
    click_on "Back"
  end

  test "destroying a Layer" do
    visit layers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Layer was successfully destroyed"
  end
end
