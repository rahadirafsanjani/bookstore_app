require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it 'is valid with a title and author_id' do
      author = Author.create!(name: 'George Orwell')
      book = Book.new(title: '1984', author: author)
      expect(book).to be_valid
    end

    it 'is invalid without a title' do
      author = Author.create!(name: 'George Orwell')
      book = Book.new(title: nil, author: author)
      expect(book).to be_invalid
      expect(book.errors[:title]).to include("can't be blank")
    end

    it 'is invalid without an author_id' do
      book = build(:book, author: nil)
      expect(book).not_to be_valid
      expect(book.errors[:author]).to include("must exist")
    end
  end

  describe 'associations' do
    it 'belongs to an author' do
      expect(Book.reflect_on_association(:author).macro).to eq(:belongs_to)
    end
  end
end
