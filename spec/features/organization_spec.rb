require 'rails_helper'

feature 'Organization' do

  scenario 'User attempts to create new person with no info' do
    visit root_path
    click_on "Organizations"
    click_on "New Organization"
    click_on "Create Organization"
    expect(page).to have_content("Name can't be blank")
  end

end
