class Api::UsersController < ApplicationController

  def create
    @user = User.new params.require(:user).permit(:username, :password, :password_confirmation)
    @user.token = SecureRandom.hex(8)
    if @user.save
      # yay
      render status: 201
    else
      # boo
      render json: @user.errors, status: 422
    end
  end
end
