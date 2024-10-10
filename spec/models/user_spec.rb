require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    subject { build(:user) }

    it 'is valid with a valid email, password, and username' do
      expect(subject).to be_valid
    end

    it 'is invalid without an email' do
      subject.email = nil
      expect(subject).not_to be_valid
      expect(subject.errors[:email]).to include("can't be blank")
    end

    it 'is invalid with an invalid email format' do
      subject.email = 'invalid_email_format'
      expect(subject).not_to be_valid
      expect(subject.errors[:email]).to include('must be a valid email format')
    end

    it 'is invalid with a duplicate email' do
      create(:user, email: 'duplicate@example.com')
      subject.email = 'duplicate@example.com'
      expect(subject).not_to be_valid
      expect(subject.errors[:email]).to include('has already been taken')
    end

    it 'is valid with a unique email' do
      subject.email = 'unique@example.com'
      expect(subject).to be_valid
    end
  end
end
