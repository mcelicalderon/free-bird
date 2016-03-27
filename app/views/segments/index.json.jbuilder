json.array!(@segments) do |segment|
  json.extract! segment, :id, :name, :segment_type_id
  json.url segment_url(segment, format: :json)
end
