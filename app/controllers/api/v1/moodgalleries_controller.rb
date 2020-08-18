class Api::V1::MoodgalleriesController < ApplicationController
    def show
        @moodgallery = Moodgallery.find(params[:id])
    end
end
