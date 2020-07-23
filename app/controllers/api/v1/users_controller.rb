class Api::V1::UsersController < ApplicationController
  def index
    users =User.all
    render json: users, include:[:pets,:favorites]
  end
  def show
    user = User.find_by(id:params[:id])
    render json: user, include:[:pets,:favorites]
  end
end
