require 'test_helper'

class InfraProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infra_project = infra_projects(:one)
  end

  test "should get index" do
    get infra_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_infra_project_url
    assert_response :success
  end

  test "should create infra_project" do
    assert_difference('InfraProject.count') do
      post infra_projects_url, params: { infra_project: { desc: @infra_project.desc, end_date: @infra_project.end_date, start_date: @infra_project.start_date, status: @infra_project.status, title: @infra_project.title } }
    end

    assert_redirected_to infra_project_url(InfraProject.last)
  end

  test "should show infra_project" do
    get infra_project_url(@infra_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_infra_project_url(@infra_project)
    assert_response :success
  end

  test "should update infra_project" do
    patch infra_project_url(@infra_project), params: { infra_project: { desc: @infra_project.desc, end_date: @infra_project.end_date, start_date: @infra_project.start_date, status: @infra_project.status, title: @infra_project.title } }
    assert_redirected_to infra_project_url(@infra_project)
  end

  test "should destroy infra_project" do
    assert_difference('InfraProject.count', -1) do
      delete infra_project_url(@infra_project)
    end

    assert_redirected_to infra_projects_url
  end
end
