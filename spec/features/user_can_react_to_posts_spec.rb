require 'rails_helper'

RSpec.feature "Adding reactions", type: :feature do
  fixtures :posts, :comments
  scenario "user can add a comment to a post" do
    sign_up_test_user
    visit "/newsfeed"
    fill_in "comment-post-id-1", with: "This is a comment!"
    click_button "comment-button-id-1"
    expect(page).to have_current_path('/newsfeed')
    expect(page).to have_content('This is a comment!')
  end

  scenario "user can add a like to a comment" do
    sign_up_test_user
    visit "/newsfeed"
    expect(find_by_id("comment-like-count-id-1")).to have_content("Likes: 0")
    click_button "comment-like-button-id-1"
    expect(find_by_id("comment-like-count-id-1")).to have_content("Likes: 1")
  end

  scenario "user can add a like to a post" do
    sign_up_test_user
    visit "/newsfeed"
    expect(find_by_id("like-count-id-1")).to have_content("Likes: 0")
    click_button "like-button-id-1"
    expect(find_by_id("like-count-id-1")).to have_content("Likes: 1")
  end

  # Do we have an "unlike" button that reverses the like?
  # Do we use the post-id-1 to like a certain post, then test it with a second user, so Likes: 2?

end
