class Api::V1::FavoritesController < ApplicationController
    def index
        @favorites_moodgalleries = current_user.favorites.where(favoritable_type: "Moodgallery").map(&:favoritable)
        @favorites_moodts = current_user.favorites.where(favoritable_type: "Moodt").map(&:favoritable)
        @favorites_mooders = current_user.favorites.where(favoritable_type: "Mooder").map(&:favoritable)
    end

    def create
        current_user.favorites.create(favoritable_type: params[:favoritable_type], favoritable_id: params[:id])
        head :ok
    end

    def destroy
        @favoritable = current_user.favorites.find_by(favoritable_type: params[:favoritable_type], favoritable_id: params[:id])
        @favoritable.destroy
        head :ok
    end
end
