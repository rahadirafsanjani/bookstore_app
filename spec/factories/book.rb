FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    published { Faker::Date.backward(days: 3650) } # Published date within the last 10 years
    author
  end
end
