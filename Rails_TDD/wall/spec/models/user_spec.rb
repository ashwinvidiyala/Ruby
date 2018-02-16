require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with valid attributes' do
    it 'should save' do
      expect(build(:user)).to be_valid
    end
  end

  context 'with invalid attributes' do
    it 'should not save if username field is blank' do
      expect(build(:user, username: '')).to be_invalid
    end

    it 'should not save if username is already taken' do
      create(:user)
      expect(build(:user)).to be_invalid
    end

    it 'should not save if username is lesser than 5 characters' do
      expect(build(:user, username: 'ross')).to be_invalid
    end
  end
end
