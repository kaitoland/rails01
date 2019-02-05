require 'test_helper'

class HmReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hm_review = hm_reviews(:one)
  end

  test "should get index" do
    get hm_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_hm_review_url
    assert_response :success
  end

  test "should create hm_review" do
    assert_difference('HmReview.count') do
      post hm_reviews_url, params: { hm_review: { created_at: @hm_review.created_at, hm_comment: @hm_review.hm_comment, hm_creator: @hm_review.hm_creator, hm_name: @hm_review.hm_name, hm_point: @hm_review.hm_point, updated_at: @hm_review.updated_at } }
    end

    assert_redirected_to hm_review_url(HmReview.last)
  end

  test "should show hm_review" do
    get hm_review_url(@hm_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_hm_review_url(@hm_review)
    assert_response :success
  end

  test "should update hm_review" do
    patch hm_review_url(@hm_review), params: { hm_review: { created_at: @hm_review.created_at, hm_comment: @hm_review.hm_comment, hm_creator: @hm_review.hm_creator, hm_name: @hm_review.hm_name, hm_point: @hm_review.hm_point, updated_at: @hm_review.updated_at } }
    assert_redirected_to hm_review_url(@hm_review)
  end

  test "should destroy hm_review" do
    assert_difference('HmReview.count', -1) do
      delete hm_review_url(@hm_review)
    end

    assert_redirected_to hm_reviews_url
  end
end
