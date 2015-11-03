json.array!(@segments) do |segment|
  json.extract! segment, :id, :start, :end, :day
  json.url segment_url(segment, format: :json)
end
