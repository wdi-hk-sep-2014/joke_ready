json.array!(@programmers) do |programmer|
  json.extract! programmer, :id, :name, :email
  json.url programmer_url(programmer, format: :json)
end
