json.set! :restaurant do
  json.extract! @restaurant, :id, :name, :opening_hours, :external_link, :image, :created_at, :updated_at
end
