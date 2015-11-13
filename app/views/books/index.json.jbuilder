json.array!(@books) do |book|
  json.extract! book, :id, :title, :String, :description, :author
  json.url book_url(book, format: :json)
end
