
50.times do
  author = Author.create! name: Faker::Name.name
  10.times do
    book = Book.new
    book.author = author
    book.title = Faker::Company.bs
    book.save!
  end

end
