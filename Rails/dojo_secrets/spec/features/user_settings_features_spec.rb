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
      expect(page).to have_field('email')
      expect(page).to have_field('name')
    end
    scenario 'inputs filled out correctly' do
      expect(find_field('name').value).to eq(@user.name)
      expect(find_field('email').value).to eq(@user.email)
    end
    scenario 'incorrectly updates information' do
      fill_in 'name', with: 'Another name'
      fill_in 'email', with: 'incorrect email format'
      click_button 'Update'
      expect(current_path).to eq(edit_user_path @user.id)
    end
    scenario 'correctly updates information' do
      fill_in 'name', with: 'Another name'
      fill_in 'email', with: 'correct@email.com'
      click_button 'Update'
      expect(page).to have_text('Another name')
    end
    scenario 'destroys user and redirects to registration page' do
      click_link 'Delete'
      expect(current_path).to eq(new_user_path)
    end
  end
end
