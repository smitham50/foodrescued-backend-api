class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!
      render json: {
        status: :created,
        user: @user.as_json(only: [
          :username, 
          :address,
          :city,
          :stateInits,
          :zip,
          :authentication_token
          ])
      }
    else 
      render json: {
        status: 409,
        errors: @user.errors.full_messages
      }
    end
  end

  private
  def user_params
    params.require(:user).permit(
      :username, 
      :password,
      :address,
      :city,
      :stateInits,
      :zip
    )
  end
end
