FactoryBot.define do
  factory :review do
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    score { Faker::Number.between(from: 1, to: 5) }
    airline_demo
  end
end
