json.array!(@novels) do |novel|
  json.extract! novel, :id, :title, :author, :description
  json.url novel_url(novel, format: :json)
end
