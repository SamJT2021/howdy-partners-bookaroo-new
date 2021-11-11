RSpec.feature "Page header has image", type: :feature do

  scenario "Welcome page has image" do
    visit("/")
    expect(page).to have_selector '#header-image' 
  end

  scenario "Log in page has image" do
    visit("/log-in")
    expect(page).to have_selector '#header-image'
  end
end