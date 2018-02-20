require 'rails_helper'

feature 'User settings features' do
  before do
    @user = create(:user)
    log_in
  end
  feature 'User Settings Dashboard' do
    before(:each) do
      visit edit_user_path @user.id
    end
    scenario 'visit users edit page' do
      expect(page).to have_field('user[email]')
      expect(page).to have_field('user[name]')
    end
    scenario 'inputs filled out correctly' do
      expect(find_field('user[name]').value).to eq(@user.name)
      expect(find_field('user[email]').value).to eq(@user.email)
    end
    scenario 'incorrectly updates information' do
      fill_in 'user[name]', with: 'Another name'
      fill_in 'user[email]', with: 'incorrect email format'
      click_button 'Update'
      expect(current_path).to eq(edit_user_path @user.id)
    end
    scenario 'correctly updates information' do
      fill_in 'user[name]', with: 'Another name'
      fill_in 'user[email]', with: 'correct@email.com'
      click_button 'Update'
      expect(page).to have_text('Another name')
    end
    scenario 'destroys user and redirects to registration page' do
      click_button 'Delete Account'
      expect(current_path).to eq(new_user_path)
    end
  end
end
