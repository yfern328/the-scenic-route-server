class RouteAlbum < ApplicationRecord
  belongs_to :route
  belongs_to :route_picture
  belongs_to :user
end
