require 'rails_helper'

feature 'Homepage' do

  scenario 'User visits the homepage' do
    visit root_path
    expect(page).to have_content("Practice Validations")
  end

end
