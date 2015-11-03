json.array!(@sections) do |section|
  json.extract! section, :id, :number_of_students, :number
  json.url section_url(section, format: :json)
end
