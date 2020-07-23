class Api::V1::PetsController < ApplicationController
   def index
pets= Pet.all
 render json: pets, include:[:favorites, :users]
  end
  def show
    pet= Pet.find_by(id:params[:id])
    render json: pet, include:[:favorites, :users]
  end
end
