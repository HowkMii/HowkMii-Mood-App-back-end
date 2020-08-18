class Api::V1::SearchController < ApplicationController
    def index
      @moodts = Mood.where('title LIKE ?', "%#{params[:query]}%")
      @moodgalleries = Moodgallery.where('title LIKE ?', "%#{params[:query]}%")
      @mooders = Mooder.where('name LIKE ?', "%#{params[:query]}%")
    end
end
