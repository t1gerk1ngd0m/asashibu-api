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
require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe 'バリデーション' do
    it 'opening_hoursは必須' do
      invalid_restaurant = FactoryBot.build(:restaurant, opening_hours: nil)
      expect(invalid_restaurant.save).to be_falsey
    end
    it 'external_linkは必須' do
      invalid_restaurant = FactoryBot.build(:restaurant, external_link: nil)
      expect(invalid_restaurant.save).to be_falsey
    end
    it 'nearest_stationは必須' do
      invalid_restaurant = FactoryBot.build(:restaurant, nearest_station: nil)
      expect(invalid_restaurant.save).to be_falsey
    end
  end

  describe 'Restaurant.create' do
    let(:restaurant) { FactoryBot.create(:restaurant) }

    it 'モーニングのお店が作成される' do
      expect(restaurant).to be_persisted
    end
  end
end
