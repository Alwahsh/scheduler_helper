json.array!(@year_classes) do |year_class|
  json.extract! year_class, :id, :type, :code
  json.url year_class_url(year_class, format: :json)
end
