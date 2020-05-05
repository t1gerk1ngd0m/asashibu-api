# == Schema Information
#
# Table name: restaurant_images
#
#  id            :bigint           not null, primary key
#  name          :string           default(""), not null
#  restaurant_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
FactoryBot.define do
  factory :restaurant_image do
    name { "MyString" }
    restaurant { nil }
  end
end
