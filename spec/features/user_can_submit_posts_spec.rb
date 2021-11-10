require 'rails_helper'

RSpec.feature "Newsfeed", type: :feature do
  scenario "Can submit posts and view them" do
    sign_up_test_user
    visit "/newsfeed"
    click_button "New post"
    fill_in "message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end
end
