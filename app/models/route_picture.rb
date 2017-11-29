class RoutePicture < ApplicationRecord
  has_many :route_albums
  has_many :routes, through: :route_albums
end
