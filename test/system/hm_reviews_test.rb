require "application_system_test_case"

class HmReviewsTest < ApplicationSystemTestCase
  setup do
    @hm_review = hm_reviews(:one)
  end

  test "visiting the index" do
    visit hm_reviews_url
    assert_selector "h1", text: "Hm Reviews"
  end

  test "creating a Hm review" do
    visit hm_reviews_url
    click_on "New Hm Review"

    fill_in "Artwork creator", with: @hm_review.artwork_creator
    fill_in "Artwork name", with: @hm_review.artwork_name
    fill_in "Artwork point", with: @hm_review.artwork_point
    fill_in "Artwork review", with: @hm_review.artwork_review
    fill_in "Created at", with: @hm_review.created_at
    fill_in "Updated at", with: @hm_review.updated_at
    click_on "Create Hm review"

    assert_text "Hm review was successfully created"
    click_on "Back"
  end

  test "updating a Hm review" do
    visit hm_reviews_url
    click_on "Edit", match: :first

    fill_in "Artwork creator", with: @hm_review.artwork_creator
    fill_in "Artwork name", with: @hm_review.artwork_name
    fill_in "Artwork point", with: @hm_review.artwork_point
    fill_in "Artwork review", with: @hm_review.artwork_review
    fill_in "Created at", with: @hm_review.created_at
    fill_in "Updated at", with: @hm_review.updated_at
    click_on "Update Hm review"

    assert_text "Hm review was successfully updated"
    click_on "Back"
  end

  test "destroying a Hm review" do
    visit hm_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hm review was successfully destroyed"
  end
end
