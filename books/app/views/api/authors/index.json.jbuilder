json.array! @authors do |author|
  json.id author.id
  json.name author.name

  json.books author.books do |book|
    json.id book.id
    json.title book.title
  end
end
