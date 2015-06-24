class Api::BooksController < ApplicationController

  before_action do
    authorize_api_application!
  end

  before_action do
    authorize_current_user!
  end


  def index
    @books = Book.all.includes(:author)
  end
end
