json.array!(@day_descriptions) do |day_description|
  json.extract! day_description, :id, :date, :temperature, :description
  json.url day_description_url(day_description, format: :json)
end
