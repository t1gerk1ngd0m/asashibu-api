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
class Restaurant < ApplicationRecord
  mount_uploader :image, RestaurantImageUploader

  has_many :restaurant_images, dependent: :destroy
  accepts_nested_attributes_for :restaurant_images, allow_destroy: true

  validates_presence_of %i(
    name
    opening_hours
    nearest_station
    external_link
  )
end
