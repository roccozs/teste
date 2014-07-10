json.array!(@animais) do |animai|
  json.extract! animai, :id, :nome, :especie
  json.url animai_url(animai, format: :json)
end
