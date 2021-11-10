require 'rails_helper'

RSpec.feature "Homepage", type: :feature do
  scenario "users are sent to the welcome page" do
    visit "/"
    expect(page).to have_content("The cowboy's life is the life for me")
  end
  scenario "logged in users are taken to the Newsfeed page" do
    sign_up_test_user
    visit "/"
    expect(page).to have_current_path("/newsfeed")
  end
end
