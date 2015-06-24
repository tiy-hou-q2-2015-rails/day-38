class Api::SessionController < ApplicationController

  def create

    username = params[:username]
    password = params[:password]
    @user = User.find_by username: username
    if (@user) && (@user.authenticate password)
      # yay
    else
      # nay
      # normally: render with a flash.now
      render json: {auth: "failed"}, status: 422
    end
  end
end
