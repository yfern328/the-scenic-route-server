class Spot < ApplicationRecord
  has_many :user_spots
  has_many :users, through: :user_spots
  has_many :spot_albums
  has_many :spot_pictures, through: :spot_albums
end
