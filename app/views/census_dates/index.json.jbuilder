json.array!(@census_dates) do |census_date|
  json.extract! census_date, :id, :date
  json.url census_date_url(census_date, format: :json)
end
