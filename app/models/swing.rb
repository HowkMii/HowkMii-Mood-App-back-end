class Swing < ApplicationRecord
    has_many :moodgalleries
    validates :name, presence: true
    has_one_attached :image

    def mooders
        Mooder.joins(:moodgalleries).where(moodgalleries: { id: self.moodgalleries.ids }).distinct
    end

    def moodts
        Moodts.joins(:moodgallery).where(moodts: { id: self.moodgalleries.ids }).distinct
    end
end
