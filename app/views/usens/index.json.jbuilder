json.array!(@usens) do |usen|
  json.extract! usen, :name, :email
  json.url usen_url(usen, format: :json)
end