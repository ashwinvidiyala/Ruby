require 'rails_helper'

feature 'user registers' do
  before(:each) do
    visit new_user_path
  end

  scenario 'successfully registers user' do
    fill_in 'user_username', with: 'ashwinvidiyala'
    click_button 'Sign in'
    expect(page).to have_content 'Welcome ashwinvidiyala'
    expect(page).to have_current_path(messages_path)
  end

  # scenario 'username is too short' do
  #   fill_in 'user_username', with: 'abcd'
  #   click_button 'Sign in'
  #   expect(page).to have_content 'Insert error message'
  #   expect(current_path).to eq(new_user_path)
  # end

  # scenario 'username not present' do
  #   click_button 'Sign in'
  #   expect(page).to have_content 'Insert error message'
  #   expect(current_path).to eq(new_user_path)
  # end

end
