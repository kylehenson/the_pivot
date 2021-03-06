require 'rails_helper'

RSpec.feature "landing page" do

  let!(:category) { create(:category) }
  let!(:user)     { create(:user) }


  scenario "any user visits the homepage" do
    visit root_path

    expect(page).to have_content("Howdy, Guest!")
    expect(page).to have_content("Cowboy Kyle's Hotdog Ranch")
    expect(page).to have_link("View Dogs in Cart")
    expect(page).to have_button("Login")
    expect(page).to have_select("category_id")
  end
end
