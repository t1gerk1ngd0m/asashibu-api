json.set! :restaurant do
  # json.extract! @restaurant, :id, :name, :opening_hours, :nearest_station, :external_link, :image, :created_at, :updated_at
  json.id @restaurant.id
  json.name @restaurant.name
  json.opening_hours @restaurant.opening_hours
  json.closing_hours @restaurant.closing_hours
  json.nearest_station @restaurant.nearest_station
  json.external_link @restaurant.external_link
  json.image ("http://#{request.host}:#{request.port.to_s}" + @restaurant.image.url)
end
