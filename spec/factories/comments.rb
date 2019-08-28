FactoryBot.define do
  factory :comment do
    content { Faker::Lorem.paragraph }
    association :post, factory: :post
  end
end
