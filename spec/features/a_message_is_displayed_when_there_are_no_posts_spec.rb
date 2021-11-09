require 'rails_helper'

RSpec.feature "Newsfeed", type: :feature do
  scenario "Can submit posts and view them" do
    sign_up_test_user
    visit "/newsfeed"
    expect(page).to have_content("There are no posts to show")
  end
end
