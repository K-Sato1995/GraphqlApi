FactoryBot.define do
  factory :post do
    title { Faker::App.name }
    description { Faker::Lorem.paragraph }
  end
end
