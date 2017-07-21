require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url, as: :json
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { bid_deadline: @project.bid_deadline, budget: @project.budget, description: @project.description, is_active: @project.is_active, is_priority: @project.is_priority, project_deadline: @project.project_deadline, tech_stack: @project.tech_stack, title: @project.title, user_id: @project.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show project" do
    get project_url(@project), as: :json
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { bid_deadline: @project.bid_deadline, budget: @project.budget, description: @project.description, is_active: @project.is_active, is_priority: @project.is_priority, project_deadline: @project.project_deadline, tech_stack: @project.tech_stack, title: @project.title, user_id: @project.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project), as: :json
    end

    assert_response 204
  end
end
