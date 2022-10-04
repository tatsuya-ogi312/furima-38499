FactoryBot.define do
  factory :order_address do
    token                    { 'tok_abcdefghijk00000000000000000' }
    postcode                 { Faker::Number.within(range: 1_000_000..9_999_999).to_s.insert(3, '-') }
    prefecture_id            { Faker::Number.within(range: 2..48) }
    city                     { Gimei.city.kanji }
    block                    { Gimei.town.kanji + '1-1' }
    building                 { '東京ハイツ' }
    phone_number             { Faker::PhoneNumber.subscriber_number(length: 10) }
  end
end
