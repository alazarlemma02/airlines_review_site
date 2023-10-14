FactoryBot.define do
  factory :airline_demo do
    name { Faker::Name.name }
    image_url { Faker::LoremFlickr.image }
    slug { Faker::Lorem.word }
  end
end
