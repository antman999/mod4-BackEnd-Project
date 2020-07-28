class Api::V1::UsersController < ApplicationController
  def index
    users =User.all
    render json: users, include:[:pets,:favorites]
  end
  def show
    user = User.find_by(id:params[:id])
    render json: user, include:[:pets,:favorites]
  end

  def create
   user = User.create(user_params)
  if user.valid?
   render json: user
  else
    render json:{errors:user.errors.full_messages}
  end
  end

  private
  def user_params
    params.require(:user).permit!
  end
end
