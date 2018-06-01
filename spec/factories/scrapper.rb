FactoryBot.define do
  factory :scrapper do
    web_url { Faker::Internet.url('example.com') }
  end
end
