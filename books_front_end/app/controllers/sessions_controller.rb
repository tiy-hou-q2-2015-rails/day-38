class SessionsController < ApplicationController
  def new
  end

  def create

    http_response = Http.post("http://localhost:3000/api/auth.json", json: {username: params[:username], password: params[:password]})

    if http_response.code == 200
      user = JSON.parse(http_response)
      session[:username] = user["username"]
      session[:token] = user["token"]
      redirect_to root_path
    else
      flash.now[:alert] = "Auth failed Bro"
      render :new
    end

  end
end
