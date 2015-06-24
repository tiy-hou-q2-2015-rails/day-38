class Api::AuthorsController < ApplicationController

  before_action do
    authorize_api_application!
  end

  def index
    @authors = Author.all.includes(:books)
  end
end
