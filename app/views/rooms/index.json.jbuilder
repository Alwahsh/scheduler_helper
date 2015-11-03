json.array!(@rooms) do |room|
  json.extract! room, :id, :type, :capacity, :projector_support
  json.url room_url(room, format: :json)
end
