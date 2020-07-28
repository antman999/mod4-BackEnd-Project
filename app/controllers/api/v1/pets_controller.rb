class Api::V1::PetsController < ApplicationController
   def index
pets= Pet.all
 render json: pets, include:[:favorites, :users]
  end
  def show
    pet= Pet.find_by(id:params[:id])
    render json: pet, include:[:favorites, :users]
  end

  def create
    pet = Pet.create(pet_params)
    render json: pet, include:[:favorites, :users]
  end

  private

  def pet_params
    params.require(:pet).permit!
  end

end
