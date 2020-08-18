class Mooder < ApplicationRecord
    has_many :moodgalleries

    validates :name, presence: true
    has_one_attached :photo
end
