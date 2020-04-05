# == Schema Information
#
# Table name: restaurants
#
#  id            :bigint           not null, primary key
#  name          :string           default(""), not null
#  opening_hours :time             not null
#  external_link :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
FactoryBot.define do
  factory :restaurant do
    sequence(:name)          { |n| "test_shop#{n}" }
    opening_hours            { "07:30:00" }
    sequence(:external_link) { "https://exmaple.com" }
  end
end
