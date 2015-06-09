json.array!(@sillas) do |silla|
  json.extract! silla, :id
  json.url silla_url(silla, format: :json)
end
