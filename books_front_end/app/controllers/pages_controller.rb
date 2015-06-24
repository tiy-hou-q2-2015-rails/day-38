class PagesController < ApplicationController
  def dashboard

    @books = JSON.parse Http.headers("x-api-key" => "91d994652a17").get("http://localhost:3000/api/books.json")
    @authors = JSON.parse Http.headers("x-api-key" => "91d994652a17").get("http://localhost:3000/api/authors.json")

  end
end
