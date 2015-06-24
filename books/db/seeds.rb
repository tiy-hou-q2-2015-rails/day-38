require 'securerandom'

User.create!  username: "jwo",
              password: "12345678",
              password_confirmation: "12345678",
              token: SecureRandom.hex(8)


50.times do
  author = Author.create! name: Faker::Name.name
  10.times do
    book = Book.new
    book.author = author
    book.title = Faker::Company.bs
    book.save!
  end

end
