json.array!(@species_records) do |species_record|
  json.extract! species_record, :id, :count, :day_description_id, :period_id, :segment_id, :species_id
  json.url species_record_url(species_record, format: :json)
end
