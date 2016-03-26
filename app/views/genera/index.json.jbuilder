json.array!(@genera) do |genus|
  json.extract! genus, :id, :name, :family_id
  json.url genus_url(genus, format: :json)
end
