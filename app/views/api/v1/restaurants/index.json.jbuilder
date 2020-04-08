json.set! :restaurants do
  json.array! @restaurants do |restaurant|
    json.extract! restaurant, :id, :name, :opening_hours, :nearest_station, :external_link, :image, :created_at, :updated_at
  end
end
