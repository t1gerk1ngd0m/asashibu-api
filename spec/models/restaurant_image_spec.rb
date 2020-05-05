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
require 'rails_helper'

RSpec.describe RestaurantImage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
