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
class RestaurantImage < ApplicationRecord
  belongs_to :restaurant
end
