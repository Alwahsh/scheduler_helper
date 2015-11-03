json.array!(@segment_collections) do |segment_collection|
  json.extract! segment_collection, :id
  json.url segment_collection_url(segment_collection, format: :json)
end
