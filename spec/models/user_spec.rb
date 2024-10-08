# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User creation' do
    context 'with valid attributes' do
      it 'creates a user with a valid email, password, and username' do
        user = build(:user)
        expect(user).to be_valid
      end
    end

    context 'with invalid attributes' do
      it 'does not create a user with an invalid email format' do
        user = build(:user, email: 'invalid_email_format')
        expect(user).not_to be_valid
        expect(user.errors[:email]).to include('is invalid')
      end

      it 'does not create a user with an existing email' do
        create(:user, email: 'existing@example.com')
        user = build(:user, email: 'existing@example.com')
        expect(user).not_to be_valid
        expect(user.errors[:email]).to include('has already been taken')
      end
    end
  end
end
