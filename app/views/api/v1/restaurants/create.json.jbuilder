json.set! :restaurant do
  json.extract! @restaurant,
    :id, :name, :opening_hours, :closing_hours,
    :nearest_station, :external_link, :image, :created_at, :updated_at
end
