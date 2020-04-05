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
class Restaurant < ApplicationRecord
  validates_presence_of %i(
    name
    opening_hours
  )
end
