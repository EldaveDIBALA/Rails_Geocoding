json.extract! flat, :id, :name, :address, :description, :price, :rooms, :available, :listed_at, :created_at, :updated_at
json.url flat_url(flat, format: :json)
