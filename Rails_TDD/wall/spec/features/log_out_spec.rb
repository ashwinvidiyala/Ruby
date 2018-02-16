require 'rails_helper'

feature 'log out' do
  before(:each) do
    visit messages_path
  end

  scenario 'messages index page should have log out button' do
    expect(page).to have_button 'Log out'
  end

  scenario 'go to log in page after clicking log out button' do
    click_button 'Log out'
    expect(page).to have_current_path(new_user_path)
  end
end
