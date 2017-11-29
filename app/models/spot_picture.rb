class SpotPicture < ApplicationRecord
  has_many :spot_albums
  has_many :spots, through: :spot_albums
end
