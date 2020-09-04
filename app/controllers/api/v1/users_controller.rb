class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  # def new
  # end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  private
  def user_params
    params.require(:user).permit(
      :name, 
      :username, 
      :password_digest, 
      :email
    )
  end
end
