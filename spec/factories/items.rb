FactoryBot.define do
  factory :item do
    association :user
    name                     { Faker::Lorem.words }
    content                  { Faker::Lorem.sentence }
    category_id              { Faker::Number.within(range: 2..11) }
    status_id                { Faker::Number.within(range: 2..7) }
    shipping_cost_id         { Faker::Number.within(range: 2..3) }
    prefecture_id            { Faker::Number.within(range: 2..48) }
    shipping_day_id          { Faker::Number.within(range: 2..4) }
    price { Faker::Number.within(range: 300..9_999_999) }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/item-sample.png'), filename: 'item-sample.png')
    end
  end
end
