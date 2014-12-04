json.array!(@jokes) do |joke|
  json.extract! joke, :id, :description
  json.url joke_url(joke, format: :json)
end
