class Api::V1::SpotsController < ApplicationController

  before_action :set_spot, except: [:index, :create]

  def create
    new_spot = Spot.create(spot_params)

    if !new_spot.errors.empty?
      render json: {status: "error", code: 400, message: new_spot.errors.full_messages[0]}
    else
      render json: new_spot
    end

  end

  def update
    @spot.update(spot_params)
    render json: @spot
  end

  def index
    @spots = Spot.all
    render json: @spots
  end

  def show
    render json: @spot
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :polyline, :image_url, :description, :rating)
  end

end
