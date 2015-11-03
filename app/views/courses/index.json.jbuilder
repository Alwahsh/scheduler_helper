json.array!(@courses) do |course|
  json.extract! course, :id, :name, :code, :type, :lecture_length, :lecs_per_week, :secs_per_week, :section_length
  json.url course_url(course, format: :json)
end
