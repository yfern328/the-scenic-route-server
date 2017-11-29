class Route < ApplicationRecord
  has_many :user_routes
  has_many :users, through: :user_routes
  has_many :route_albums
  has_many :route_pictures, through: :route_albums
end
