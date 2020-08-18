class Moodt < ApplicationRecord
  belongs_to :moodgallery
  validates :title, presence: true
  has_one_attached :file
end
