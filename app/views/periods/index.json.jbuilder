json.array!(@periods) do |period|
  json.extract! period, :id, :start, :end
  json.url period_url(period, format: :json)
end
