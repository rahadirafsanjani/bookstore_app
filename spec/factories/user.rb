FactoryBot.define do
  factory :user do
    email { "testuser@example.com" }
    password { "password" }
    username { "Test User" }
  end
end
