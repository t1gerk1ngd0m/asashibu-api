require 'csv'

restaurant_data = CSV.read("#{Rails.root}/db/fixtures/csv/restaurants.csv")
restaurant_data.shift
restaurant_data.each do |row|
  Restaurant.seed do |s|
    s.name = row[0]
    s.opening_hours = row[1]
    s.external_link = row[2]
    s.nearest_station = row[3]
    s.image = row[4]
  end  
end
