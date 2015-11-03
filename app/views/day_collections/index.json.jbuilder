json.array!(@day_collections) do |day_collection|
  json.extract! day_collection, :id
  json.url day_collection_url(day_collection, format: :json)
end
