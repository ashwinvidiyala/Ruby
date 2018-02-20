require 'rails_helper'

feature 'User features' do
  before do
    @user = create(:user)
  end
  feature 'user sign-up' do
    before(:each) do
      visit new_user_path
    end
    scenario 'visits sign up page' do
      expect(page).to have_field('user[name]')
      expect(page).to have_field('user[email]')
      expect(page).to have_field('user[password]')
      expect(page).to have_field('user[password_confirmation]')
    end
    # scenario 'with improper inputs, redirects back to sign in and shows validations' do
    #   click_button 'Register'
    #   expect(current_path).to eq(new_user_path)
    #   expect(page).to have_text("can't be blank")
    # end
    scenario 'with proper inputs, creates user and redirects to login page' do
      fill_in 'user[email]', with: 'curry@warriors.com'
      fill_in 'user[name]', with: 'curry'
      fill_in 'user[password]', with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'
      click_button 'Register'
      expect(current_path).to eq(new_session_path)
    end
  end
  feature 'user dashboard' do
    before do
      log_in
    end
    scenario 'displays user information' do
      expect(page).to have_text(@user.name)
      expect(page).to have_link('Edit Profile')
    end
  end
end
