class PagesController < ApplicationController
  def dashboard

    token = session[:token]

    @username = session[:username]

    response = Http.headers("x-api-key" => "91d994652a17").get("http://localhost:3000/api/authors.json?token=#{token}")
    if response.code != 200
      # render text: "You need to login"
      # return false
      redirect_to sign_in_path
    end

    @authors = JSON.parse response

  end
end
