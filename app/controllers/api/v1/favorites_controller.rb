class Api::V1::FavoritesController < ApplicationController


    def index
      favorites = Favorite.all 
      render json: favorites
    end

    def create
        favorite = Favorite.create(favorite_params)
        render json: favorite, include: [:pet, :user]
    end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite, include: [:pet, :user]
    end

    private

    def favorite_params
      params.require(:favorite).permit(:user_id, :pet_id)
    end

end
