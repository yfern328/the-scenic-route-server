class User < ApplicationRecord
  has_secure_password
  has_many :user_spots
  has_many :spots, through: :user_spots
  has_many :user_routes
  has_many :routes, through: :user_routes

end
