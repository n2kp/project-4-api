require 'test_helper'

class TendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tender = tenders(:one)
  end

  test "should get index" do
    get tenders_url, as: :json
    assert_response :success
  end

  test "should create tender" do
    assert_difference('Tender.count') do
      post tenders_url, params: { tender: { bid: @tender.bid, image: @tender.image, is_active: @tender.is_active, pitch: @tender.pitch, project_id: @tender.project_id, status: @tender.status, user_id: @tender.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show tender" do
    get tender_url(@tender), as: :json
    assert_response :success
  end

  test "should update tender" do
    patch tender_url(@tender), params: { tender: { bid: @tender.bid, image: @tender.image, is_active: @tender.is_active, pitch: @tender.pitch, project_id: @tender.project_id, status: @tender.status, user_id: @tender.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy tender" do
    assert_difference('Tender.count', -1) do
      delete tender_url(@tender), as: :json
    end

    assert_response 204
  end
end
