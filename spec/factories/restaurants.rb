# == Schema Information
#
# Table name: restaurants
#
#  id              :bigint           not null, primary key
#  name            :string           default(""), not null
#  opening_hours   :time             not null
#  closing_hours   :time
#  nearest_station :string           default(""), not null
#  external_link   :string
#  image           :string           default(""), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :restaurant do
    sequence(:name)          { |n| "test_shop#{n}" }
    opening_hours            { "07:30:00" }
    nearest_station          { "渋谷駅" }
    sequence(:external_link) { "https://exmaple.com" }
    remote_image_url         { "https://tabelog.com/imgview/original?id=r6288747363" }
  end
end
