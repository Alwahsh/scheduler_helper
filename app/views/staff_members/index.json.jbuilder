json.array!(@staff_members) do |staff_member|
  json.extract! staff_member, :id, :max_hours_per_day, :name, :code, :score, :min_gap, :max_gap, :type, :email
  json.url staff_member_url(staff_member, format: :json)
end
