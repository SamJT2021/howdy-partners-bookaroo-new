require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Users can sign up for an account" do
    sign_up_test_user
    expect(page).to have_current_path("/newsfeed")
  end

  scenario "Users get validation errors for blank fields" do
    visit "/"
    click_button "Sign up"
    expect(page).to have_current_path("/sign-up")
    click_button "Sign up"
    expect(find_by_id('form-username')).to have_content "can't be blank"
    expect(find_by_id('form-password')).to have_content "can't be blank"
  end
  
  scenario "New users can fill in the sign up form" do
    visit "/"
    click_button "Sign up"
    expect(page).to have_current_path("/sign-up")
    expect(page).to have_content("Profile picture")
  end

  scenario "users who do not enter a profile picture are assigned a default image" do
    sign_up_test_user_without_profile_picture
    expect(page).to have_css("img[src*='https://lh3.googleusercontent.com/proxy/o4g3witOQP5IKgMnR271nEd2NwM-CetBeNdsl5z_Mozw-wrAXi30uBNL4-ckj4dFNA5Z_BsZ6fLDMVa0AZBg_xhw9A']")
  end

end
