json.array!(@departments) do |department|
  json.extract! department, :id, :name, :head_id
  json.url department_url(department, format: :json)
end
