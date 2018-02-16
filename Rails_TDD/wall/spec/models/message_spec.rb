require 'rails_helper'

RSpec.describe Message, type: :model do
  context 'with valid attributes' do
    it 'should save' do
      expect(build(:message)).to be_valid
    end
  end

  context 'with invalid attributes' do
    it 'should not save if message field is blank' do
      expect(build(:message, content: '')).to be_invalid
    end

    it 'should not save if message content is less than or equal 10 characters' do
      expect(build(:message, content: 'not enough')).to be_invalid
    end

    it 'should not save if not associated user' do
      expect(build(:message, user: '')).to be_invalid
    end
  end
end
