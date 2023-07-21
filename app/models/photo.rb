  class Photo < ApplicationRecord
    belongs_to :owner
    has_one_attached :image
    validates :caption, presence: true
  end

