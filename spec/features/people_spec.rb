require 'rails_helper'

feature 'People' do

  scenario 'User attempts to create new person with no info' do
    visit root_path
    click_on "People"
    click_on "New Person"
    click_on "Create Person"
    expect(page).to have_content("First name can't be blank")
    expect(page).to have_content("Last name can't be blank")
    expect(page).to have_content("Date of birth can't be blank")
  end

end
