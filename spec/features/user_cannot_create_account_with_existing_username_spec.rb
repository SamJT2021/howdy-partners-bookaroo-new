require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "User cannot create an account with already existing username" do
    sign_up_test_user
    visit('/sign-up')
    fill_in "user[username]", with: "user1"
    fill_in "user[password]", with: "test"
    click_button "Sign up"
    expect(page).to have_current_path("/users")
    expect(page).to have_content("Username has already been taken")
  end
end