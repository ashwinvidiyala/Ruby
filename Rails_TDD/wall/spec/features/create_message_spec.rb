require 'rails_helper'

feature 'create message' do
  before(:each) do
    visit messages_path
  end

  scenario 'successfully create message' do
    fill_in 'message_content', with: 'This is a message'
    click_button 'Post a Message'
    expect(page).to have_content 'This is a message'
    expect(current_path).to eq(messages_path)
  end

  # scenario 'message too short' do
  #   fill_in 'message_content', with 'Too short'
  #   click_button 'Post a Message'
  #   expect(page).to have_content 'Insert error message'
  #   expect(current_path).to eq(messages_path)
  # end
  #
  # scenario 'message not present' do
  #   click_button 'Post a Message'
  #   expect(page).to have_content 'Insert error message'
  #   expect(current_path).to eq(messages_path)
  # end

end
