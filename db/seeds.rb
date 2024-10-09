# db/seeds.rb
require 'factory_bot_rails'

# Clean up existing data to avoid duplicates
Book.destroy_all
Author.destroy_all

# Create 100 authors, and each author will have some books
30.times do
  author = FactoryBot.create(:author, name: Faker::Name.name)

  # Create between 1 and 5 books for each author
  FactoryBot.create_list(:book, rand(1..5), author: author)
end

puts "Seeded #{Author.count} authors and #{Book.count} books!"
