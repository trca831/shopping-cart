require 'faker'
FactoryBot.define do
  factory :product do |f|
    f.name { Faker::Name.name }
    f.price { Faker::Number.number(digits: 10) }
    f.image { Faker::Number.number(digits: 10) }
    f.amount { Faker::Number.number(digits: 10) }
  end
end
