RSpec.feature "Log in", type: :feature do
  scenario "There are no posts on the newsfeed" do
    Post.destroy_all
    sign_up_test_user
    visit('/newsfeed')
    expect(page).to have_content "There are no posts to display."
  end
end
