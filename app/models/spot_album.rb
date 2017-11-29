class SpotAlbum < ApplicationRecord
  belongs_to :spot
  belongs_to :spot_picture
  belongs_to :user
end
