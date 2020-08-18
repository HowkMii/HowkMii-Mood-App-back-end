class Api::V1::DashboardController < ApplicationController

  def index
    load_recent_heard
    load_recommendations
  end

  private

  def load_recent_heard
    @recent_moodgalleries = current_user.recently_heards.order('created_at DESC').limit(8).map(&:moodgallery).uniq
  end

  def load_recommendations
    heard_swings = @recent_moodgalleries .map(&:swing)
    if heard_swings.present?
        @recommend_moodgalleries = Moodgallery.joins(:swing, :moodts).where(swing: heard_swings).order('moodts.played_count')
                                                          .select('distinct moodgalleries.*').limit(12)
    else
        @recommend_moodgalleries = Moodgallery.all.sample(12)
    end 
  end
end
