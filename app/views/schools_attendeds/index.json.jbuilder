json.array!(@schools_attendeds) do |schools_attended|
  json.extract! schools_attended, :id, :school, :beginning_year, :ending_year
  json.url schools_attended_url(schools_attended, format: :json)
end
