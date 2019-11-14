require "application_system_test_case"

class InfraProjectsTest < ApplicationSystemTestCase
  setup do
    @infra_project = infra_projects(:one)
  end

  test "visiting the index" do
    visit infra_projects_url
    assert_selector "h1", text: "Infra Projects"
  end

  test "creating a Infra project" do
    visit infra_projects_url
    click_on "New Infra Project"

    fill_in "Desc", with: @infra_project.desc
    fill_in "End date", with: @infra_project.end_date
    fill_in "Start date", with: @infra_project.start_date
    fill_in "Status", with: @infra_project.status
    fill_in "Title", with: @infra_project.title
    click_on "Create Infra project"

    assert_text "Infra project was successfully created"
    click_on "Back"
  end

  test "updating a Infra project" do
    visit infra_projects_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @infra_project.desc
    fill_in "End date", with: @infra_project.end_date
    fill_in "Start date", with: @infra_project.start_date
    fill_in "Status", with: @infra_project.status
    fill_in "Title", with: @infra_project.title
    click_on "Update Infra project"

    assert_text "Infra project was successfully updated"
    click_on "Back"
  end

  test "destroying a Infra project" do
    visit infra_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Infra project was successfully destroyed"
  end
end
