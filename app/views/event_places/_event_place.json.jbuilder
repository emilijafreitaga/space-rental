json.extract! event_place, :id, :place_name, :address, :category, :description, :max_capacity, :price_per_booking, :created_at, :updated_at
json.url event_place_url(event_place, format: :json)
