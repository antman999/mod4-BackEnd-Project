class Api::V1::LostPetsController < ApplicationController
    
    def index
      lost_pets = LostPet.all
      render json: lost_pets
    end

    def create
        lost_pet = LostPet.create(lost_pet_params)
        render json: lost_pet
    end

    private

    def lost_pet_params
      params.require(:lost_pet).permit!
    end

end