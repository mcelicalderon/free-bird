json.array!(@segment_types) do |segment_type|
  json.extract! segment_type, :id, :name
  json.url segment_type_url(segment_type, format: :json)
end
