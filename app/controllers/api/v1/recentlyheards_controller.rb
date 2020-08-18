class Api::V1::RecentlyheardsController < ApplicationController
    def create
        current_user.recently_heards.create(moodgallery_id: params[:moodgallery_id])
        head :ok
      end
end
