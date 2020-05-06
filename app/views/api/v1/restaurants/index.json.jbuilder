json.set! :restaurants do
  json.array! @restaurants do |restaurant|
    json.id restaurant.id
    json.name restaurant.name
    json.opening_hours restaurant.opening_hours
    json.closing_hours restaurant.closing_hours
    json.nearest_station restaurant.nearest_station
    json.external_link restaurant.external_link
    if Rails.env.production?
      json.image restaurant.image.url
    else
      json.image ("http://#{request.host}:#{request.port.to_s}" + restaurant.image.url)
    end
  end
end
