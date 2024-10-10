require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'validations' do
    it 'is valid with a name' do
      author = Author.new(name: 'J.K. Rowling')
      expect(author).to be_valid
    end

    it 'is invalid without a name' do
      author = Author.new(name: nil)
      expect(author).to be_invalid
      expect(author.errors[:name]).to include("can't be blank")
    end
  end

  describe 'associations' do
    it 'has many books' do
      expect(Author.reflect_on_association(:books).macro).to eq(:has_many)
    end
  end
end
